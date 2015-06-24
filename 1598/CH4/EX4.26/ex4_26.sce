clc;
v=100;       //v in volt
c1=1*10^-6;  //capacitance in Farad
c2=2*10^-6;  //capacitance in Farad
c3=3*10^-6;  //capacitance in Farad
cs=6/11;  //calculating series capacitance
cp=(c1+c2+c3);  //calculating parallel capacitance
disp(cs,"Equivalent Series capacitance in farad = ");  //displaying result
disp(cp,"Equivalent parallel capacitance in farad = ");  //displaying result
disp("Therefore Cp=(11*Cs)");  //displaying result