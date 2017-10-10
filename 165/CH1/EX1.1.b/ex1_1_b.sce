//Example 1.1(b)
clc;
Yn=20*10^-3;        //Expected value
Xn=18*10^-3;        //Measured value
e=Yn-Xn;            //Absolute error
pe=e*100/Yn;        //Percentage error
RA=1-(e/Yn);        //Relative Accuracy
pa=RA*100;          //Percentage Accuracy
printf('\nExpected value = %.2f mA\n',Yn*1000)
printf('\nMeasured value = %.2f mA\n',Xn*1000)
printf('\nAbsolute error = %.2f mA\n',e*1000)
printf('\nPercentage error = %.2f percent\n',pe)
printf('\nRelative accuracy = %.2f\n',RA)
printf('\nPercentage accuracy = %.2f percent\n',pa)