//Example 1.1(a)
clc;
Yn=80;        //Expected value
Xn=79;        //Measured value
e=Yn-Xn;      //Absolute error
pe=e*100/Yn;  //Percentage error
RA=1-(e/Yn);  //Relative Accuracy
pa=RA*100;    //Percentage Accuracy
printf('\nExpected value = %.2f V\n',Yn)
printf('\nMeasured value = %.2f V\n',Xn)
printf('\nAbsolute error = %.2f V\n',e)
printf('\nPercentage error = %.2f percent\n',pe)
printf('\nRelative accuracy = %.4f\n',RA)
printf('\nPercentage accuracy = %.2f percent\n',pa)