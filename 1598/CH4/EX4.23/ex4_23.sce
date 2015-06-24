clc;
v=100;       //v in volt
c1=8*10^-6;  //capacitance in Farad
c2=12*10^-6;  //capacitance in Farad
c3=24*10^-6;  //capacitance in Farad
cs=4/(10^6);  //calculating series capacitance
cp=(c1+c2+c3);  //calculating parallel capacitance
disp(cs,"Equivalent Series capacitance in farad = ");  //displaying result
disp(cp,"Equivalent parallel capacitance in farad = ");  //displaying result
qs=cs*v;  //calculating charge
disp(qs,"charge on plate in Coulomb = ");  //displaying result