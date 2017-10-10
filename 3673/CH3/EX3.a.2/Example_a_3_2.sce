//Example_a_3_2 page no:129
clc;
R=(((8+1.07)*1)/(8+1.07+1))+1;
I1=10/R;
It=5/5.8;
I5=(It*10)/18.5;
I2=(I5*1)/2;
Ir3=(10*6.07)/(6.07+3.5);
I3=(Ir3*(1/2));
I=I1-I2-I3;
disp(I,"the current passing through the circuit is (in A)");
