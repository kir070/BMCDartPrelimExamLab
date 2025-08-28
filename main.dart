import 'dart:io';

void main () {
    double passingGradeThreshold = 60.0;
    double maximumPossibleScore = 100.0;
    double assignmentWeight= 0.2;
    double midtermWeight = 0.3;
    double finalExamWeight = 0.5;
//declare ang mga constant


//input ng namema
print("Enter name:");
String? studentName = stdin.readLineSync();
print("The entered name is ${studentName}");

//input ng assignment score
print("Enter Assignment Score");
double? assignmentScore = double.parse(stdin.readLineSync()!);
print("Enter assignment score ($assignmentScore):");

//input ng midterm score
print("Enter midterm score");
double? midtermScore = double.parse(stdin.readLineSync()!);
print("Enter midterm score ($midtermScore): ");

//input ng final score
print("Enter final score");
double finalExamScore = double.parse(stdin.readLineSync()!);
print("Enter final score ($finalExamScore): ");

//condition. pag ung assignment,midterm, and final exam, scres are greater than 0, mag proceed sya sa condition.
try { 
    if (assignmentScore >0 && midtermScore >0 && finalExamScore >0) {
        double finalGrade = (assignmentScore * assignmentWeight) + (midtermScore * midtermWeight) + (finalExamScore * finalExamWeight);
 //condition for passing or failed
        String passOrFAIL;
            if (finalGrade >= passingGradeThreshold) {
             passOrFAIL = 'Passed';
            } else {
            passOrFAIL = 'Failed';
            }
//print
  print('Student Grade Report');
  print('Student Name: $studentName');
  print('Assignment Score: ${assignmentScore}');
  print('Midterm Score: ${midtermScore}');
  print('Final Exam Score: ${finalExamScore}');
  print('Calculated Final Grade: ${finalGrade}');
  print('Result: $passOrFAIL');
}
//catch
} catch (e) {
    print("Error: Invalid Value.");
  }
}
