//Example 4-5//
//Reduce a given expression//
clc
//clears the window//
clear
//clears all existing variables//
//the given expression is as follows//
disp(' Given Expression- ((AB''+ABC)''+A(B+AB''))'' ')
disp('factorise')
disp(' ((A(B''+BC))''+A(B+AB''))'' ')
//reduce using laws 18 and 20//
disp(' ((A(B''+C))''+A(B+A))'' ')
disp('multiply')
disp(' ((AB''+AC)''+AA+AB)'' ')
//reduce using laws 7,8,11,18//
disp(' ((AB''+AC)''+A)'' ')
disp('demorganize')
disp(' ((A''+B)(A''+C'')+A)'' ')
disp('multiply')
disp(' (A''A''+A''C''+A''B+BC''+A)'' ')
//Reduce using laws 18,8//
disp(' (A''(1+C''+B)+BC''+A)'' ')
//reduce using law 18,7,11//
disp(' 1'' ')
disp(' 0 ')
//final reduced expression is displayed//
