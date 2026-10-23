import 'package:flutter/material.dart';
import '../models/tutorial.dart';

const Color kPrimary = Color(0xFF2E5AAC);
const Color kBackground = Color(0xFFFFFDF7);
const Color kText = Color(0xFF263238);
const Color kCream = Color(0xFFFFF3D6);

class TutorialScreen extends StatefulWidget {
  final Tutorial tutorial;

  const TutorialScreen({super.key, required this.tutorial});

  @override
  State<TutorialScreen> createState() => _TutorialScreenState();
}

class _TutorialScreenState extends State<TutorialScreen> {
  int currentStep = 0;

  @override
  Widget build(BuildContext context) {
    final tutorial = widget.tutorial;
    final step = tutorial.steps[currentStep];
    final isLastStep = currentStep == tutorial.steps.length - 1;

    return Scaffold(
      backgroundColor: kBackground,
      appBar: AppBar(
        title: Text(
          tutorial.title,
          style: const TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w800,
            color: kText,
          ),
        ),
        backgroundColor: kBackground,
        foregroundColor: kText,
        elevation: 0,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Step ${currentStep + 1} of ${tutorial.steps.length}',
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w800,
                  color: kPrimary,
                ),
              ),
              const SizedBox(height: 12),

              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: LinearProgressIndicator(
                  value: (currentStep + 1) / tutorial.steps.length,
                  minHeight: 10,
                  color: kPrimary,
                  backgroundColor: const Color(0xFFDCE4F8),
                ),
              ),

              const SizedBox(height: 28),

              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        step.title,
                        style: const TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.w800,
                          height: 1.25,
                          color: kText,
                        ),
                      ),
                      const SizedBox(height: 18),

                      Text(
                        step.instruction,
                        style: const TextStyle(
                          fontSize: 21,
                          height: 1.55,
                          color: kText,
                        ),
                      ),

                      if (step.safetyNote != null) ...[
                        const SizedBox(height: 24),
                        Container(
                          width: double.infinity,
                          padding: const EdgeInsets.all(18),
                          decoration: BoxDecoration(
                            color: kCream,
                            borderRadius: BorderRadius.circular(16),
                            border: Border.all(
                              color: const Color(0xFFE0B34B),
                              width: 1.5,
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Row(
                                children: [
                                  Icon(
                                    Icons.shield_outlined,
                                    color: kText,
                                    size: 26,
                                  ),
                                  SizedBox(width: 8),
                                  Expanded(
                                    child: Text(
                                      'Safety reminder',
                                      style: TextStyle(
                                        fontSize: 19,
                                        fontWeight: FontWeight.w800,
                                        color: kText,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 10),
                              Text(
                                step.safetyNote!,
                                style: const TextStyle(
                                  fontSize: 18,
                                  height: 1.45,
                                  color: kText,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 18),

              Row(
                children: [
                  Expanded(
                    child: OutlinedButton(
                      onPressed: currentStep == 0
                          ? null
                          : () {
                              setState(() {
                                currentStep--;
                              });
                            },
                      style: OutlinedButton.styleFrom(
                        minimumSize: const Size(0, 58),
                        foregroundColor: kPrimary,
                        side: const BorderSide(color: kPrimary, width: 1.5),
                        textStyle: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14),
                        ),
                      ),
                      child: const Text('Back'),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        if (isLastStep) {
                          Navigator.of(context).pop();
                        } else {
                          setState(() {
                            currentStep++;
                          });
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(0, 58),
                        backgroundColor: kPrimary,
                        foregroundColor: Colors.white,
                        textStyle: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w800,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14),
                        ),
                      ),
                      child: Text(isLastStep ? 'Finish' : 'Next'),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
