import '../models/tutorial.dart';

const tutorials = <Tutorial>[
  Tutorial(
    id: 'book_cab',
    title: 'Book a cab',
    description: 'Learn how to request a ride safely.',
    category: 'Travel',
    icon: '🚕',
    steps: [
      TutorialStep(
        title: 'Open a cab service',
        instruction: 'Open the cab-booking app you normally use.',
      ),
      TutorialStep(
        title: 'Enter your destination',
        instruction:
            'Choose your destination and check that the pickup location is correct.',
      ),
      TutorialStep(
        title: 'Compare available rides',
        instruction:
            'Review the ride options, estimated fare, and arrival time.',
      ),
      TutorialStep(
        title: 'Verify before booking',
        instruction:
            'Check the destination, pickup point, and total fare before confirming.',
        safetyNote: 'Never share your account password or OTP with a driver.',
      ),
      TutorialStep(
        title: 'Check your ride details',
        instruction:
            'After booking, verify the driver and vehicle details shown in the app.',
      ),
    ],
  ),
  Tutorial(
    id: 'online_shopping',
    title: 'Shop online',
    description: 'Learn the basic steps of placing an order.',
    category: 'Shopping',
    icon: '🛍️',
    steps: [
      TutorialStep(
        title: 'Find your product',
        instruction:
            'Search for the product and compare its description and price.',
      ),
      TutorialStep(
        title: 'Check the seller',
        instruction:
            'Review seller information, customer reviews, and return conditions.',
      ),
      TutorialStep(
        title: 'Review your order',
        instruction: 'Check the product, delivery address, and final amount.',
        safetyNote:
            'Use a trusted shopping service and never share your payment PIN.',
      ),
      TutorialStep(
        title: 'Confirm only when ready',
        instruction:
            'Choose a payment option you understand and confirm the order only after checking the details.',
      ),
    ],
  ),
  Tutorial(
    id: 'digital_payments',
    title: 'Make a digital payment',
    description: 'Understand payment checks before sending money.',
    category: 'Payments',
    icon: '💳',
    steps: [
      TutorialStep(
        title: 'Open your payment app',
        instruction:
            'Open your trusted payment app and choose the intended payment method.',
      ),
      TutorialStep(
        title: 'Verify the recipient',
        instruction: 'Check the recipient name and payment details carefully.',
        safetyNote:
            'Never approve a request to receive money if it unexpectedly asks you to enter your payment PIN.',
      ),
      TutorialStep(
        title: 'Check the amount',
        instruction:
            'Verify the amount and any displayed charges before proceeding.',
      ),
      TutorialStep(
        title: 'Review before authorizing',
        instruction:
            'Proceed only if you initiated the payment and understand what you are authorizing.',
        safetyNote:
            'Never share your PIN or OTP with anyone, including someone claiming to be support staff.',
      ),
      TutorialStep(
        title: 'Verify the result',
        instruction:
            'Check the app transaction status before attempting the payment again.',
      ),
    ],
  ),
];
