//Illustration of Central Difference Formula
close();
clear;
clc;
xi = 0:0.2:1.2;
fi = sin(xi); 
x0 = 0;
h = 0.2;
format('v',8);
// First order difference
delta1_fi = diff(fi);
// Second order difference
delta2_fi = diff(delta1_fi);
// Third order difference
delta3_fi = diff(delta2_fi);
// Fourth order difference
delta4_fi = diff(delta3_fi);
//Fifth order difference
delta5_fi = diff(delta4_fi);
//Sixth order difference
delta6_fi = diff(delta5_fi);
disp(fi , 'Values of f(x) : ')
disp(delta1_fi , 'First Order Difference :')
disp(delta2_fi , 'Second Order Difference :')
disp(delta3_fi , 'Third Order Difference :')
disp(delta4_fi , 'Fourth Order Difference :')
disp(delta5_fi , 'Fifth Order Difference :')
disp(delta6_fi , 'Sixth Order Difference :')
//Calculating p2(0.67)
xm = 0.6;
x = 0.67; 
s = (x-xm)/0.2;
p2 = fi(4) + {s*(delta1_fi(3)+delta1_fi(4))/2} + s*s*(delta2_fi(3))/2;
disp(p2 , 'Value of p2(0.67) : ');
//Calculating p4(0.67)
p4 = p2 + s*(s*s-1)*(delta3_fi(3)+delta3_fi(2))/12 + s*s*(s*s-1)*delta4_fi(2)/24;
disp(p4 , 'Value of p4(0.67) : ');
//Exact value of sin(0.67) is 0.62099 so error in estimation
err = 0.62099-0.62098;
disp(err , 'Error in estimation : ');