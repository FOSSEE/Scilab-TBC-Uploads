clc
//Example 1.1
//Page no 6

//Solution

disp("Substituting into Eq 1.3 (ref pg no 4) yeilds,");

ap=10*log10(200);   //absolute power ratio in dB

disp('dB',ap,"The absolute power ratio is:");

//absolute ratio: 200 = 100 X 2"

disp("Applying the product rule for logarithms, the power gain in dB is:");

Ap=10*log10(100)+10*log10(2);  //power gain in dB

//Result
disp('dB',Ap,"The power gain is, ")  
