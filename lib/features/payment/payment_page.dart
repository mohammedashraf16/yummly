import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:yumly/core/components/my_button.dart';
import 'package:yumly/features/payment/delivery_progress_page.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  String cardNumber = "";
  String expiryDate = "";
  String cardHolderName = "";
  String cvvCode = "";
  bool isCvvFocused = false;
void userTappedPay(){
  if(formKey.currentState!.validate()){
    showDialog(context: context, builder: (context) => AlertDialog(
      title: Text("Confirm payment"),
      content: SingleChildScrollView(
        child: ListBody(
          children: [
            Text("Card Number: $cardNumber"),
            Text("Expiry Date: $expiryDate"),
            Text("Card Holder Name: $cardHolderName"),
            Text("CVV: $cvvCode"),
          ],
        ),
      ),
      actions: [
        TextButton(onPressed: ()=>Navigator.pop(context), child: Text("Cancel")),
        TextButton(onPressed: (){
          Navigator.pop(context);
          Navigator.push(context, MaterialPageRoute(builder: (context) => DeliveryProgressPage(),));
        }, child: Text("Yes")),
      ],
    ),);
  }
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Checkout"),
        centerTitle: true,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(Icons.arrow_back_ios_new),
        ),
        backgroundColor: Colors.transparent,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SingleChildScrollView(
        child: Column(
          children: [
            CreditCardWidget(
              cardNumber: cardNumber,
              expiryDate: expiryDate,
              cardHolderName: cardHolderName,
              cvvCode: cvvCode,
              showBackView: isCvvFocused,
              onCreditCardWidgetChange: (p0) {},
            ),
            CreditCardForm(
              cardNumber: cardNumber,
              expiryDate: expiryDate,
              cardHolderName: cardHolderName,
              cvvCode: cvvCode,
              onCreditCardModelChange: (data) {
                setState(() {
                  cardNumber = data.cardNumber;
                  expiryDate = data.expiryDate;
                  cardHolderName = data.cardHolderName;
                  cvvCode = data.cvvCode;
                });
              },
              formKey: formKey,
            ),
            SizedBox(height: MediaQuery.sizeOf(context).height*.2,),
            MyButton(text: "Pay now",onTap: userTappedPay,),
            SizedBox(height: 25),
          ],
        ),
      ),
    );
  }
}
