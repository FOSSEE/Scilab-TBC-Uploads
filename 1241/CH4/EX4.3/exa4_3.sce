//Example 4-3//
//Reducing a given expression//
clc
//clears the console//
clear
//clears all existing variables//
//the given expression is as follows//
disp(' Given Expression- ((AB)''+A''+AB)'' ')
disp('applying DeMorgan Theorem')
disp(' reduced expression ')
disp(' (A''+B''+A''+AB)'' ')
disp('as A+A=A')
disp(' (A''+B''+AB)'' ')
//By law 20//
disp(' (A''+B''+A)'' ')
disp('rearranging')
disp(' (A+A''+B'')'' ')
//by law 13//
disp(' (1+B'')'' ')
//by law 11//
disp(' 1'' ')
disp(' 0 ')
//final reduced expression is displayed/
