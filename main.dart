import "dart:io";
//1). create a function that prompts a user for their age and school that they go to and a hobby.
//    deliver  a personalized message.

void givePersonalizedMessage(){
  //get user's name
  stdout.write("What is your name?: ");
  String? name = stdin.readLineSync();

  // get user's school
  stdout.write("Which school are you in? ");
  String? school = stdin.readLineSync();

  //get user's hobby.
  stdout.write("What is your Hobby? ");
  String? hobby = stdin.readLineSync();

  //get user's age
  stdout.write("How old are you? ");
  String? input = stdin.readLineSync(); 
  //convert into a number
  int? age = int.tryParse(input!);
  // handle errors
  if(age == null){
    print("Please enter a number \n");
  }else{
    print("Hello $name, you are $age years old, you love $hobby and go to $school. Keep it up and I wish you all the best. \n");
  }
}
//2)Functions. Create a function that perfoms mathemetical operations using user input
 void doMath(){
  print("Please choose which math operation you'd like to do between multiplication and division.\n ");
  stdout.write(" Type '*' for multiplication and '/' for division ");
  String? input = stdin.readLineSync();

  // prompt for the numbers
  stdout.write("provide the first number: ");
  String? firstInput = stdin.readLineSync();

  stdout.write("provide the second number: ");
  String? secondInput = stdin.readLineSync();

  //convert to numbers
  int? num1 = int.tryParse(firstInput!);
  int? num2 = int.tryParse(secondInput!);
  //handle errors
  if(num1!=null && num2!=null){
    if(input =="*"){
      print("$num1 multiplied by $num2 is: ${num1 * num2}\n ");
    }else if(input =="/"){
      print("$num1 divided by $num2 is: ${num1 / num2} \n ");
    }else{
      print("Please pick either '*' or '/' \n");
    }
  }
 }

 //3)Control Flow. create a function that checks on the marks scored by a student and offers remarks based on them.
  void gradeChecker(int marks){
   if(marks >= 85){
    print("Exellent!!! \n");
   }else if(marks >=75 && marks <85){
    print("Very Good! \n");
   }else if(marks>=65 && marks <75){
    print("Good \n");
   }else{
    print("Average \n");
   }

  }
void main(){
  givePersonalizedMessage();
  doMath();
  gradeChecker(70);
}

