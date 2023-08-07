import 'package:flutter/material.dart';
import 'package:tipcalculator/widgets/simpleInputField.dart';

class TipCalculator extends StatefulWidget {
  const TipCalculator({super.key});

  @override
  State<TipCalculator> createState() => _TipCalculatorState();
}

class _TipCalculatorState extends State<TipCalculator> {

  final formkey= GlobalKey<FormState>();

  final totalBillController = TextEditingController();
  final totalPercentageController = TextEditingController();
  final totalPeopleController = TextEditingController();


  static const Color containercolor= Color(0xffF5F8F8);
  static const Color textBlack= Color(0xff232323);
  static const Color textLightBlack= Color(0xff717171);
  static const Color orange= Color(0xffFF7511);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tip Calculator',style: TextStyle(fontSize:18, color: Colors.black87, fontWeight: FontWeight.w600),),
        centerTitle: true,
        elevation: 3,
        shadowColor: Colors.black.withOpacity(0.3),
        backgroundColor: Colors.white,
      ),
      body:
      Padding(
        padding: const EdgeInsets.all(10),
        child: Form(
          key: formkey,
          child: Column(

            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //first section
              Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: containercolor,
                      borderRadius: BorderRadius.circular(5)
                  ),
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    children: [
                      Text('Total Bill', style:  TextStyle(color: textLightBlack),),
                      Text('\$ ${totalBillController.text}', style: TextStyle(fontSize: 26, fontWeight: FontWeight.w700,color: textBlack),),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Total persons', style:  TextStyle(color: textLightBlack),),
                          Text('Tip Ammount', style:  TextStyle(color: textLightBlack),),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('05', style:  TextStyle(color: textBlack, fontSize: 16, fontWeight: FontWeight.w700),),
                          Text('0.55', style:  TextStyle(color: textBlack, fontSize: 16, fontWeight: FontWeight.w700),),
                        ],
                      )
                    ],
                  )
              ),

              //Space between container
              const SizedBox(
                height: 10,
              ),

              //Second section
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    color: containercolor,
                    borderRadius: BorderRadius.circular(5)
                ),
                padding: const EdgeInsets.all(15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Amount per persons', style:  TextStyle(color: textLightBlack),),
                    Text('\$ 0.00', style: TextStyle(fontSize: 26, fontWeight: FontWeight.w700,color: textBlack),),

                  ],
                ),
              ),

              //Spacer for unlimited space
              const Spacer(),

              SimpleInputField(
                  controller: totalBillController,
                  title : 'Total Bill',
                  hintText: 'Please enter the total bill amount'
              ),
              SimpleInputField(
                  controller: totalPercentageController,
                  title : 'Tip percentage',
                  hintText: 'Please enter the percentage'
              ),
              SimpleInputField(
                  controller: totalPeopleController,
                  title : 'Number of people',
                  hintText: 'Please enter the total number of people'
              ),

              Row(

                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        //formkey.currentState.validate();
                      },
                      child: Container(
                        margin: const EdgeInsets.only(top: 10),
                        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 45),
                        decoration: BoxDecoration(
                            color: Colors.black87,
                            borderRadius: BorderRadius.circular(18)
                        ),
                        child:
                        const Text("Calculate", style: TextStyle(color: Colors.white),),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){

                    },
                    child: Container(
                      margin: const EdgeInsets.only(top: 10),
                      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 45),
                      decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(18)
                      ),
                      child:
                      const Text("Calculate", style: TextStyle(color: Colors.white),),
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