clc;
Vdd=10;
Idss1=0.002;
Rd1=1000;
Rd2=100;
Vout1=Vdd-(Idss1*Rd1);
Vout2=Vdd-(Idss1*Rd2);
disp('V',Vout1,"Vout1=");//The answers vary due to round off error
disp('V',Vout2,"Vout2=");//The answers vary due to round off error


