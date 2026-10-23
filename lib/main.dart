import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_overlay_window/flutter_overlay_window.dart';

const Color kPrimary = Color(0xFF2E5AAC);
const Color kBackground = Color(0xFFFFFDF7);
const Color kText = Color(0xFF263238);
const Color kSoftGreen = Color(0xFFDDEFE2);
const Color kGreen = Color(0xFF246B45);
const Color kCream = Color(0xFFFFF3D6);

String tr(String lang, String key) =>
    _strings[lang]?[key] ?? _strings['en']![key] ?? key;

const Map<String, Map<String, String>> _strings = {
  'en': {
    'appName': 'EasyAccess',
    'tagline': 'Everyday tasks, made easier',
    'welcome': 'What would you like help with?',
    'seniorMode': 'Simple mode',
    'seniorHint': 'Larger text and clearer controls',
    'language': 'Language',
    'english': 'English',
    'malayalam': 'മലയാളം',
    'floatingGuide': 'Open floating guide',
    'floatingHint': 'Keep step-by-step help on screen while using another app.',
    'tutorials': 'Step-by-step guides',
    'cabTitle': 'Book a cab',
    'cabDesc': 'Choose a pickup and destination safely.',
    'shoppingTitle': 'Shop online',
    'shoppingDesc': 'Find an item, check the seller and place an order.',
    'paymentTitle': 'Make a digital payment',
    'paymentDesc': 'Check the recipient before paying.',
    'openGuide': 'Open guide',
    'startFloating': 'Floating guide',
    'step': 'Step',
    'of': 'of',
    'back': 'Back',
    'next': 'Next',
    'finish': 'Finish',
    'close': 'Close guide',
    'changeLanguage': 'Language in guide',
    'safety': 'Safety reminder',
    'noSafety': 'Take your time. Do not share passwords or PINs.',
    'permissionTitle': 'Allow display over other apps',
    'permissionBody':
        'Android needs overlay permission so EasyAccess can show the guide above other apps. Enable it in Settings, then return and tap the guide button again.',
    'openSettings': 'Open permission settings',
    'cancel': 'Cancel',
    'permissionDenied':
        'Overlay permission was not granted. Enable “Display over other apps” in Android Settings and try again.',
    'overlayError':
        'Could not start the floating guide. Please check overlay permission and try again.',
    'guideStarted':
        'Floating guide requested. If it is not visible, check Android overlay permission and battery/background restrictions.',
    'home': 'Home',
    'important': 'Important',
    'otp':
        'Only tell the ride OTP to the driver after you have checked that the car and driver match your booking.',
    'pin':
        'Never share your UPI PIN, card PIN, password or one-time banking code with anyone.',
    'seller':
        'Check the seller, total price, delivery details and return policy before ordering.',
    'cabS1t': 'Open your ride app',
    'cabS1i':
        'Open the ride-booking app on your phone. Sign in only in the official app.',
    'cabS2t': 'Set pickup location',
    'cabS2i':
        'Check the pickup address on the map. Correct it if the pin is in the wrong place.',
    'cabS3t': 'Enter destination',
    'cabS3i':
        'Type where you want to go, then review the route, fare estimate and ride type.',
    'cabS4t': 'Check the booking',
    'cabS4i':
        'Before getting in, match the vehicle number, car model and driver details shown in the app.',
    'cabS5t': 'Start the ride safely',
    'cabS5i':
        'Share the trip with someone you trust if needed. Give the ride OTP only after checking the booking and only to your driver.',
    'shopS1t': 'Search for the item',
    'shopS1i':
        'Open the shopping app or website you trust and search for the item.',
    'shopS2t': 'Compare listings',
    'shopS2i':
        'Read product details, recent reviews, seller information and delivery dates.',
    'shopS3t': 'Check the final price',
    'shopS3i':
        'Review the item price, delivery fee, quantity, address and return policy before ordering.',
    'shopS4t': 'Choose a payment method',
    'shopS4i':
        'Use a payment method you understand. Do not follow payment links sent by strangers.',
    'shopS5t': 'Review your order',
    'shopS5i':
        'Confirm the item and address, then save the order confirmation for reference.',
    'payS1t': 'Open your payment app',
    'payS1i': 'Open your official UPI or bank app and unlock it privately.',
    'payS2t': 'Choose the recipient',
    'payS2i':
        'Select the correct contact or scan the intended recipient’s QR code.',
    'payS3t': 'Check the details',
    'payS3i':
        'Verify the recipient name and amount on the screen before proceeding.',
    'payS4t': 'Approve carefully',
    'payS4i':
        'Enter your PIN only inside your official payment app. A PIN authorises a payment; never enter it to receive money.',
    'payS5t': 'Confirm the result',
    'payS5i':
        'Wait for the success or failure message and check transaction history before trying again.',
  },
  'ml': {
    'appName': 'ഈസി ആക്സസ്',
    'tagline': 'ദൈനംദിന കാര്യങ്ങൾ ഇനി എളുപ്പത്തിൽ',
    'welcome': 'എന്തിനാണ് സഹായം വേണ്ടത്?',
    'seniorMode': 'ലളിതമായ മോഡ്',
    'seniorHint': 'വലിയ അക്ഷരങ്ങളും വ്യക്തമായ ബട്ടണുകളും',
    'language': 'ഭാഷ',
    'english': 'English',
    'malayalam': 'മലയാളം',
    'floatingGuide': 'ഫ്ലോട്ടിംഗ് ഗൈഡ് തുറക്കുക',
    'floatingHint': 'മറ്റൊരു ആപ്പ് ഉപയോഗിക്കുമ്പോഴും ഘട്ടങ്ങൾ സ്ക്രീനിൽ കാണാം.',
    'tutorials': 'ഘട്ടംഘട്ടമായുള്ള സഹായം',
    'cabTitle': 'കാബ് ബുക്ക് ചെയ്യുക',
    'cabDesc': 'പിക്കപ്പ് സ്ഥലവും ലക്ഷ്യസ്ഥാനവും സുരക്ഷിതമായി തിരഞ്ഞെടുക്കുക.',
    'shoppingTitle': 'ഓൺലൈനിൽ സാധനങ്ങൾ വാങ്ങുക',
    'shoppingDesc': 'സാധനം കണ്ടെത്തി വിൽപ്പനക്കാരനെ പരിശോധിച്ച് ഓർഡർ ചെയ്യുക.',
    'paymentTitle': 'ഡിജിറ്റൽ പേയ്മെന്റ് നടത്തുക',
    'paymentDesc':
        'പണം അയയ്ക്കുന്നതിന് മുമ്പ് സ്വീകരിക്കുന്നയാളെ പരിശോധിക്കുക.',
    'openGuide': 'ഗൈഡ് തുറക്കുക',
    'startFloating': 'ഫ്ലോട്ടിംഗ് ഗൈഡ്',
    'step': 'ഘട്ടം',
    'of': '/',
    'back': 'മുമ്പ്',
    'next': 'അടുത്തത്',
    'finish': 'പൂർത്തിയാക്കുക',
    'close': 'ഗൈഡ് അടയ്ക്കുക',
    'changeLanguage': 'ഗൈഡിലെ ഭാഷ',
    'safety': 'സുരക്ഷാ ഓർമ്മപ്പെടുത്തൽ',
    'noSafety': 'സാവധാനം ചെയ്യുക. പാസ്‌വേഡോ PIN-ഓ പങ്കിടരുത്.',
    'permissionTitle': 'മറ്റ് ആപ്പുകൾക്ക് മുകളിൽ കാണിക്കാൻ അനുമതി നൽകുക',
    'permissionBody':
        'മറ്റ് ആപ്പുകൾക്ക് മുകളിൽ EasyAccess ഗൈഡ് കാണിക്കാൻ Android അനുമതി ആവശ്യമാണ്. Settings-ൽ അത് അനുവദിച്ച് തിരികെ വന്ന് വീണ്ടും ബട്ടൺ അമർത്തുക.',
    'openSettings': 'അനുമതി ക്രമീകരണങ്ങൾ തുറക്കുക',
    'cancel': 'റദ്ദാക്കുക',
    'permissionDenied':
        'ഓവർലേ അനുമതി ലഭിച്ചില്ല. Android Settings-ൽ “Display over other apps” അനുവദിച്ച് വീണ്ടും ശ്രമിക്കുക.',
    'overlayError':
        'ഫ്ലോട്ടിംഗ് ഗൈഡ് ആരംഭിക്കാനായില്ല. അനുമതി പരിശോധിച്ച് വീണ്ടും ശ്രമിക്കുക.',
    'guideStarted':
        'ഫ്ലോട്ടിംഗ് ഗൈഡ് ആരംഭിക്കാൻ അഭ്യർത്ഥിച്ചു. കാണുന്നില്ലെങ്കിൽ ഓവർലേ അനുമതിയും ബാറ്ററി നിയന്ത്രണങ്ങളും പരിശോധിക്കുക.',
    'home': 'ഹോം',
    'important': 'പ്രധാനപ്പെട്ടത്',
    'otp':
        'കാർയും ഡ്രൈവർ വിവരങ്ങളും ബുക്കിംഗുമായി പൊരുത്തപ്പെടുന്നുവെന്ന് ഉറപ്പാക്കിയ ശേഷം മാത്രം OTP ഡ്രൈവറോട് പറയുക.',
    'pin':
        'UPI PIN, കാർഡ് PIN, പാസ്‌വേഡ്, ബാങ്ക് OTP എന്നിവ ആരോടും പങ്കിടരുത്.',
    'seller':
        'ഓർഡർ ചെയ്യുന്നതിന് മുമ്പ് വിൽപ്പനക്കാരൻ, മൊത്തവില, ഡെലിവറി, റിട്ടേൺ നയം എന്നിവ പരിശോധിക്കുക.',
    'cabS1t': 'റൈഡ് ആപ്പ് തുറക്കുക',
    'cabS1i':
        'ഫോണിൽ കാബ് ബുക്കിംഗ് ആപ്പ് തുറക്കുക. ഔദ്യോഗിക ആപ്പിൽ മാത്രം സൈൻ ഇൻ ചെയ്യുക.',
    'cabS2t': 'പിക്കപ്പ് സ്ഥലം തിരഞ്ഞെടുക്കുക',
    'cabS2i':
        'മാപ്പിലെ പിക്കപ്പ് വിലാസം പരിശോധിക്കുക. പിൻ തെറ്റായ സ്ഥലത്താണെങ്കിൽ തിരുത്തുക.',
    'cabS3t': 'ലക്ഷ്യസ്ഥാനം നൽകുക',
    'cabS3i':
        'പോകേണ്ട സ്ഥലം ടൈപ്പ് ചെയ്ത് റൂട്ട്, ഏകദേശ നിരക്ക്, റൈഡ് തരം എന്നിവ പരിശോധിക്കുക.',
    'cabS4t': 'ബുക്കിംഗ് പരിശോധിക്കുക',
    'cabS4i':
        'കാറിൽ കയറുന്നതിന് മുമ്പ് വാഹന നമ്പർ, കാർ മോഡൽ, ഡ്രൈവർ വിവരങ്ങൾ ആപ്പുമായി പൊരുത്തപ്പെടുത്തുക.',
    'cabS5t': 'സുരക്ഷിതമായി യാത്ര തുടങ്ങുക',
    'cabS5i':
        'ആവശ്യമെങ്കിൽ യാത്ര വിശ്വസിക്കുന്ന ഒരാളുമായി പങ്കിടുക. ബുക്കിംഗ് പരിശോധിച്ച ശേഷം മാത്രം OTP ഡ്രൈവറോട് പറയുക.',
    'shopS1t': 'സാധനം തിരയുക',
    'shopS1i':
        'വിശ്വസിക്കുന്ന ഷോപ്പിംഗ് ആപ്പോ വെബ്സൈറ്റോ തുറന്ന് സാധനം തിരയുക.',
    'shopS2t': 'വിവരങ്ങൾ താരതമ്യം ചെയ്യുക',
    'shopS2i':
        'ഉൽപ്പന്ന വിവരങ്ങൾ, പുതിയ റിവ്യൂകൾ, വിൽപ്പനക്കാരൻ, ഡെലിവറി തീയതി എന്നിവ വായിക്കുക.',
    'shopS3t': 'അവസാന വില പരിശോധിക്കുക',
    'shopS3i':
        'ഓർഡറിന് മുമ്പ് വില, ഡെലിവറി ചാർജ്, എണ്ണം, വിലാസം, റിട്ടേൺ നയം എന്നിവ പരിശോധിക്കുക.',
    'shopS4t': 'പേയ്മെന്റ് രീതി തിരഞ്ഞെടുക്കുക',
    'shopS4i':
        'നിങ്ങൾക്ക് മനസ്സിലാകുന്ന പേയ്മെന്റ് രീതി ഉപയോഗിക്കുക. അപരിചിതർ അയക്കുന്ന ലിങ്കുകൾ തുറക്കരുത്.',
    'shopS5t': 'ഓർഡർ പരിശോധിക്കുക',
    'shopS5i':
        'സാധനവും വിലാസവും ശരിയാണെന്ന് ഉറപ്പാക്കി ഓർഡർ സ്ഥിരീകരണം സൂക്ഷിക്കുക.',
    'payS1t': 'പേയ്മെന്റ് ആപ്പ് തുറക്കുക',
    'payS1i':
        'ഔദ്യോഗിക UPI അല്ലെങ്കിൽ ബാങ്ക് ആപ്പ് തുറന്ന് സ്വകാര്യമായി അൺലോക്ക് ചെയ്യുക.',
    'payS2t': 'സ്വീകരിക്കുന്നയാളെ തിരഞ്ഞെടുക്കുക',
    'payS2i':
        'ശരിയായ കോൺടാക്റ്റ് തിരഞ്ഞെടുക്കുക അല്ലെങ്കിൽ ഉദ്ദേശിച്ച വ്യക്തിയുടെ QR കോഡ് സ്കാൻ ചെയ്യുക.',
    'payS3t': 'വിവരങ്ങൾ പരിശോധിക്കുക',
    'payS3i': 'തുടരുന്നതിന് മുമ്പ് സ്ക്രീനിലെ പേര്, തുക എന്നിവ ഉറപ്പാക്കുക.',
    'payS4t': 'ശ്രദ്ധയോടെ അംഗീകരിക്കുക',
    'payS4i':
        'ഔദ്യോഗിക പേയ്മെന്റ് ആപ്പിൽ മാത്രം PIN നൽകുക. പണം സ്വീകരിക്കാൻ PIN നൽകേണ്ടതില്ല.',
    'payS5t': 'ഫലം പരിശോധിക്കുക',
    'payS5i':
        'വിജയമോ പരാജയമോ എന്ന സന്ദേശം കാത്തிருந்து വീണ്ടും ശ്രമിക്കുന്നതിന് മുമ്പ് ഇടപാട് ചരിത്രം പരിശോധിക്കുക.',
  },
};

class GuideStep {
  final String titleKey;
  final String instructionKey;
  final String? safetyKey;

  const GuideStep(this.titleKey, this.instructionKey, {this.safetyKey});
}

class GuideTutorial {
  final String id;
  final String titleKey;
  final String descriptionKey;
  final IconData icon;
  final List<GuideStep> steps;

  const GuideTutorial({
    required this.id,
    required this.titleKey,
    required this.descriptionKey,
    required this.icon,
    required this.steps,
  });
}

const List<GuideTutorial> kTutorials = [
  GuideTutorial(
    id: 'cab',
    titleKey: 'cabTitle',
    descriptionKey: 'cabDesc',
    icon: Icons.local_taxi,
    steps: [
      GuideStep('cabS1t', 'cabS1i'),
      GuideStep('cabS2t', 'cabS2i'),
      GuideStep('cabS3t', 'cabS3i'),
      GuideStep('cabS4t', 'cabS4i', safetyKey: 'otp'),
      GuideStep('cabS5t', 'cabS5i', safetyKey: 'otp'),
    ],
  ),
  GuideTutorial(
    id: 'shopping',
    titleKey: 'shoppingTitle',
    descriptionKey: 'shoppingDesc',
    icon: Icons.shopping_bag,
    steps: [
      GuideStep('shopS1t', 'shopS1i'),
      GuideStep('shopS2t', 'shopS2i'),
      GuideStep('shopS3t', 'shopS3i', safetyKey: 'seller'),
      GuideStep('shopS4t', 'shopS4i'),
      GuideStep('shopS5t', 'shopS5i'),
    ],
  ),
  GuideTutorial(
    id: 'payment',
    titleKey: 'paymentTitle',
    descriptionKey: 'paymentDesc',
    icon: Icons.account_balance_wallet,
    steps: [
      GuideStep('payS1t', 'payS1i'),
      GuideStep('payS2t', 'payS2i'),
      GuideStep('payS3t', 'payS3i'),
      GuideStep('payS4t', 'payS4i', safetyKey: 'pin'),
      GuideStep('payS5t', 'payS5i'),
    ],
  ),
];

GuideTutorial tutorialById(String id) =>
    kTutorials.firstWhere((t) => t.id == id, orElse: () => kTutorials.first);

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const EasyAccessApp());
}

class EasyAccessApp extends StatefulWidget {
  const EasyAccessApp({super.key});

  @override
  State<EasyAccessApp> createState() => _EasyAccessAppState();
}

class _EasyAccessAppState extends State<EasyAccessApp> {
  String _language = 'en';
  bool _simpleMode = true;
  StreamSubscription<dynamic>? _overlaySubscription;

  @override
  void initState() {
    super.initState();
    _overlaySubscription = FlutterOverlayWindow.overlayListener.listen((event) {
      final message = event.toString();
      if (message.contains('locale:ml') && mounted) {
        setState(() => _language = 'ml');
      }
      if (message.contains('locale:en') && mounted) {
        setState(() => _language = 'en');
      }
    });
  }

  @override
  void dispose() {
    _overlaySubscription?.cancel();
    super.dispose();
  }

  void _setLanguage(String value) => setState(() => _language = value);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'EasyAccess',
      locale: Locale(_language),
      supportedLocales: const [Locale('en'), Locale('ml')],
      localizationsDelegates: GlobalMaterialLocalizations.delegates,
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: kBackground,
        colorScheme: ColorScheme.fromSeed(
          seedColor: kPrimary,
          surface: kBackground,
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: kBackground,
          foregroundColor: kText,
          elevation: 0,
        ),
        textTheme: ThemeData.light().textTheme.apply(
          bodyColor: kText,
          displayColor: kText,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: kPrimary,
            foregroundColor: Colors.white,
            minimumSize: const Size(48, 54),
            textStyle: const TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w700,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(14),
            ),
          ),
        ),
        cardTheme: CardThemeData(
          color: Colors.white,
          elevation: 1,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18),
          ),
        ),
      ),
      home: HomeScreen(
        language: _language,
        simpleMode: _simpleMode,
        onLanguageChanged: _setLanguage,
        onSimpleModeChanged: (v) => setState(() => _simpleMode = v),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  final String language;
  final bool simpleMode;
  final ValueChanged<String> onLanguageChanged;
  final ValueChanged<bool> onSimpleModeChanged;

  const HomeScreen({
    super.key,
    required this.language,
    required this.simpleMode,
    required this.onLanguageChanged,
    required this.onSimpleModeChanged,
  });

  Future<void> _startOverlay(
    BuildContext context,
    GuideTutorial tutorial,
  ) async {
    try {
      bool allowed = await FlutterOverlayWindow.isPermissionGranted();

      if (!allowed) {
        if (!context.mounted) return;

        final shouldOpen = await showDialog<bool>(
          context: context,
          builder: (ctx) => AlertDialog(
            title: Text(tr(language, 'permissionTitle')),
            content: Text(tr(language, 'permissionBody')),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(ctx, false),
                child: Text(tr(language, 'cancel')),
              ),
              ElevatedButton(
                onPressed: () => Navigator.pop(ctx, true),
                child: Text(tr(language, 'openSettings')),
              ),
            ],
          ),
        );

        if (shouldOpen != true) return;

        allowed = await FlutterOverlayWindow.requestPermission() ?? false;
      }

      if (!allowed) {
        if (context.mounted) {
          _showMessage(context, tr(language, 'permissionDenied'));
        }
        return;
      }

      await FlutterOverlayWindow.showOverlay(
        height: 420,
        width: 340,
        alignment: OverlayAlignment.center,
        enableDrag: true,
        overlayTitle: 'EasyAccess',
        overlayContent: tr(language, 'floatingHint'),
      );

      await Future<void>.delayed(const Duration(milliseconds: 600));

      await FlutterOverlayWindow.shareData(
        'locale:$language|tutorial:${tutorial.id}',
      );

      if (context.mounted) {
        _showMessage(context, tr(language, 'guideStarted'));
      }
    } catch (e) {
      if (context.mounted) {
        _showMessage(context, '${tr(language, 'overlayError')}\n$e');
      }
    }
  }

  void _showMessage(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message), duration: const Duration(seconds: 5)),
    );
  }

  @override
  Widget build(BuildContext context) {
    final titleSize = simpleMode ? 25.0 : 21.0;
    final bodySize = simpleMode ? 17.0 : 15.0;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          tr(language, 'appName'),
          style: const TextStyle(fontWeight: FontWeight.w800),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12),
            child: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                value: language,
                borderRadius: BorderRadius.circular(12),
                items: [
                  DropdownMenuItem(
                    value: 'en',
                    child: Text(tr(language, 'english')),
                  ),
                  DropdownMenuItem(
                    value: 'ml',
                    child: Text(tr(language, 'malayalam')),
                  ),
                ],
                onChanged: (v) {
                  if (v != null) onLanguageChanged(v);
                },
              ),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.fromLTRB(16, 4, 16, 28),
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: const Color(0xFFEAF0FF),
                borderRadius: BorderRadius.circular(22),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    tr(language, 'tagline'),
                    style: TextStyle(
                      fontSize: bodySize,
                      color: kPrimary,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    tr(language, 'welcome'),
                    style: TextStyle(
                      fontSize: titleSize,
                      height: 1.25,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  const SizedBox(height: 18),
                  SwitchListTile(
                    contentPadding: EdgeInsets.zero,
                    activeThumbColor: kGreen,
                    title: Text(
                      tr(language, 'seniorMode'),
                      style: TextStyle(
                        fontSize: bodySize,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    subtitle: Text(
                      tr(language, 'seniorHint'),
                      style: TextStyle(fontSize: bodySize - 2),
                    ),
                    value: simpleMode,
                    onChanged: onSimpleModeChanged,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
            Text(
              tr(language, 'tutorials'),
              style: TextStyle(
                fontSize: titleSize - 2,
                fontWeight: FontWeight.w800,
              ),
            ),
            const SizedBox(height: 10),
            for (final tutorial in kTutorials)
              Padding(
                padding: const EdgeInsets.only(bottom: 12),
                child: _TutorialCard(
                  tutorial: tutorial,
                  language: language,
                  simpleMode: simpleMode,
                  onOpen: () => Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => TutorialScreen(
                        tutorial: tutorial,
                        language: language,
                        onLanguageChanged: onLanguageChanged,
                        simpleMode: simpleMode,
                      ),
                    ),
                  ),
                  onFloating: () => _startOverlay(context, tutorial),
                ),
              ),
            const SizedBox(height: 8),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: kCream,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(Icons.shield_outlined, color: kText, size: 28),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          tr(language, 'important'),
                          style: const TextStyle(
                            fontWeight: FontWeight.w800,
                            fontSize: 17,
                          ),
                        ),
                        const SizedBox(height: 6),
                        Text(
                          tr(language, 'pin'),
                          style: TextStyle(fontSize: bodySize, height: 1.4),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _TutorialCard extends StatelessWidget {
  final GuideTutorial tutorial;
  final String language;
  final bool simpleMode;
  final VoidCallback onOpen;
  final VoidCallback onFloating;

  const _TutorialCard({
    required this.tutorial,
    required this.language,
    required this.simpleMode,
    required this.onOpen,
    required this.onFloating,
  });

  @override
  Widget build(BuildContext context) => Card(
    child: Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 54,
                height: 54,
                decoration: BoxDecoration(
                  color: kSoftGreen,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Icon(tutorial.icon, color: kGreen, size: 30),
              ),
              const SizedBox(width: 13),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      tr(language, tutorial.titleKey),
                      style: TextStyle(
                        fontSize: simpleMode ? 20 : 18,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      tr(language, tutorial.descriptionKey),
                      style: TextStyle(
                        fontSize: simpleMode ? 16 : 14,
                        height: 1.35,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 14),
          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: onOpen,
                  child: Text(tr(language, 'openGuide')),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: OutlinedButton.icon(
                  onPressed: onFloating,
                  icon: const Icon(Icons.picture_in_picture_alt),
                  label: Text(
                    tr(language, 'startFloating'),
                    textAlign: TextAlign.center,
                  ),
                  style: OutlinedButton.styleFrom(
                    minimumSize: const Size(48, 54),
                    foregroundColor: kPrimary,
                    side: const BorderSide(color: kPrimary),
                    textStyle: const TextStyle(fontWeight: FontWeight.w700),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}

class TutorialScreen extends StatefulWidget {
  final GuideTutorial tutorial;
  final String language;
  final ValueChanged<String> onLanguageChanged;
  final bool simpleMode;

  const TutorialScreen({
    super.key,
    required this.tutorial,
    required this.language,
    required this.onLanguageChanged,
    required this.simpleMode,
  });

  @override
  State<TutorialScreen> createState() => _TutorialScreenState();
}

class _TutorialScreenState extends State<TutorialScreen> {
  int _index = 0;
  late String _language;

  @override
  void initState() {
    super.initState();
    _language = widget.language;
  }

  @override
  void didUpdateWidget(covariant TutorialScreen oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (oldWidget.language != widget.language) {
      _language = widget.language;
    }
  }

  @override
  Widget build(BuildContext context) {
    final step = widget.tutorial.steps[_index];
    final bodySize = widget.simpleMode ? 21.0 : 18.0;

    return Scaffold(
      appBar: AppBar(
        title: Text(tr(_language, widget.tutorial.titleKey)),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                value: _language,
                items: [
                  DropdownMenuItem(
                    value: 'en',
                    child: Text(tr(_language, 'english')),
                  ),
                  DropdownMenuItem(
                    value: 'ml',
                    child: Text(tr(_language, 'malayalam')),
                  ),
                ],
                onChanged: (v) {
                  if (v != null) {
                    setState(() => _language = v);
                    widget.onLanguageChanged(v);
                  }
                },
              ),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                '${tr(_language, 'step')} '
                '${_index + 1} ${tr(_language, 'of')} '
                '${widget.tutorial.steps.length}',
                style: const TextStyle(
                  fontWeight: FontWeight.w800,
                  color: kPrimary,
                  fontSize: 17,
                ),
              ),
              const SizedBox(height: 10),
              LinearProgressIndicator(
                value: (_index + 1) / widget.tutorial.steps.length,
                minHeight: 9,
                borderRadius: BorderRadius.circular(9),
                color: kPrimary,
                backgroundColor: const Color(0xFFDCE4F8),
              ),
              const SizedBox(height: 28),
              Text(
                tr(_language, step.titleKey),
                style: TextStyle(
                  fontSize: widget.simpleMode ? 28 : 24,
                  fontWeight: FontWeight.w800,
                  height: 1.2,
                ),
              ),
              const SizedBox(height: 18),
              Expanded(
                child: SingleChildScrollView(
                  child: Text(
                    tr(_language, step.instructionKey),
                    style: TextStyle(fontSize: bodySize, height: 1.55),
                  ),
                ),
              ),
              if (step.safetyKey != null)
                Container(
                  margin: const EdgeInsets.only(bottom: 18),
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: kCream,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        tr(_language, 'safety'),
                        style: const TextStyle(fontWeight: FontWeight.w800),
                      ),
                      const SizedBox(height: 6),
                      Text(
                        tr(_language, step.safetyKey!),
                        style: TextStyle(
                          fontSize: widget.simpleMode ? 17 : 15,
                          height: 1.35,
                        ),
                      ),
                    ],
                  ),
                ),
              Row(
                children: [
                  Expanded(
                    child: OutlinedButton(
                      onPressed: _index > 0
                          ? () => setState(() => _index--)
                          : null,
                      child: Text(tr(_language, 'back')),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        if (_index < widget.tutorial.steps.length - 1) {
                          setState(() => _index++);
                        } else {
                          Navigator.of(context).pop();
                        }
                      },
                      child: Text(
                        _index < widget.tutorial.steps.length - 1
                            ? tr(_language, 'next')
                            : tr(_language, 'finish'),
                      ),
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

@pragma('vm:entry-point')
void overlayMain() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    const MaterialApp(debugShowCheckedModeBanner: false, home: OverlayGuide()),
  );
}

class OverlayGuide extends StatefulWidget {
  const OverlayGuide({super.key});

  @override
  State<OverlayGuide> createState() => _OverlayGuideState();
}

class _OverlayGuideState extends State<OverlayGuide> {
  String _language = 'en';
  String _tutorialId = 'cab';
  int _index = 0;

  StreamSubscription<dynamic>? _subscription;

  @override
  void initState() {
    super.initState();

    _subscription = FlutterOverlayWindow.overlayListener.listen(
      _receiveMessage,
    );
  }

  void _receiveMessage(dynamic event) {
    final message = event.toString();

    final languageMatch = RegExp(r'locale:(en|ml)').firstMatch(message);

    final tutorialMatch = RegExp(
      r'tutorial:(cab|shopping|payment)',
    ).firstMatch(message);

    if (!mounted) return;

    setState(() {
      if (languageMatch != null) {
        _language = languageMatch.group(1)!;
      }

      if (tutorialMatch != null) {
        _tutorialId = tutorialMatch.group(1)!;
        _index = 0;
      }
    });
  }

  @override
  void dispose() {
    _subscription?.cancel();
    super.dispose();
  }

  Future<void> _changeLanguage(String lang) async {
    setState(() => _language = lang);

    try {
      await FlutterOverlayWindow.shareData(
        'locale:$lang|tutorial:$_tutorialId',
      );
    } catch (_) {}
  }

  @override
  Widget build(BuildContext context) {
    final tutorial = tutorialById(_tutorialId);

    final step = tutorial.steps[_index.clamp(0, tutorial.steps.length - 1)];

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      locale: Locale(_language),
      supportedLocales: const [Locale('en'), Locale('ml')],
      localizationsDelegates: GlobalMaterialLocalizations.delegates,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: kPrimary),
        scaffoldBackgroundColor: kBackground,
      ),
      home: Material(
        child: SafeArea(
          child: Container(
            decoration: BoxDecoration(
              color: kBackground,
              border: Border.all(color: kPrimary, width: 2),
              borderRadius: BorderRadius.circular(18),
            ),
            padding: const EdgeInsets.all(14),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  children: [
                    const Icon(
                      Icons.assistant_navigation,
                      color: kPrimary,
                      size: 26,
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        tr(_language, 'appName'),
                        style: const TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                    DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        value: _language,
                        items: [
                          DropdownMenuItem(
                            value: 'en',
                            child: Text(tr(_language, 'english')),
                          ),
                          DropdownMenuItem(
                            value: 'ml',
                            child: Text(tr(_language, 'malayalam')),
                          ),
                        ],
                        onChanged: (v) {
                          if (v != null) {
                            _changeLanguage(v);
                          }
                        },
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 4),
                Text(
                  tr(_language, tutorial.titleKey),
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 8),
                LinearProgressIndicator(
                  value: (_index + 1) / tutorial.steps.length,
                  minHeight: 6,
                  borderRadius: BorderRadius.circular(6),
                  color: kPrimary,
                ),
                const SizedBox(height: 8),
                Text(
                  '${tr(_language, 'step')} '
                  '${_index + 1} '
                  '${tr(_language, 'of')} '
                  '${tutorial.steps.length}',
                  style: const TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w700,
                    color: kPrimary,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  tr(_language, step.titleKey),
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                const SizedBox(height: 6),
                Flexible(
                  child: SingleChildScrollView(
                    child: Text(
                      tr(_language, step.instructionKey),
                      style: const TextStyle(fontSize: 15, height: 1.3),
                    ),
                  ),
                ),
                if (step.safetyKey != null)
                  Padding(
                    padding: const EdgeInsets.only(top: 7),
                    child: Text(
                      '⚠ ${tr(_language, step.safetyKey!)}',
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: kGreen,
                      ),
                    ),
                  ),
                const SizedBox(height: 9),
                Row(
                  children: [
                    Expanded(
                      child: OutlinedButton(
                        onPressed: _index == 0
                            ? null
                            : () => setState(() => _index--),
                        child: Text(tr(_language, 'back')),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          if (_index < tutorial.steps.length - 1) {
                            setState(() => _index++);
                          } else {
                            setState(() => _index = 0);
                          }
                        },
                        child: Text(
                          tr(
                            _language,
                            _index == tutorial.steps.length - 1
                                ? 'finish'
                                : 'next',
                          ),
                        ),
                      ),
                    ),
                    IconButton(
                      tooltip: tr(_language, 'close'),
                      onPressed: () async {
                        try {
                          await FlutterOverlayWindow.closeOverlay();
                        } catch (_) {}
                      },
                      icon: const Icon(Icons.close, color: kText),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
