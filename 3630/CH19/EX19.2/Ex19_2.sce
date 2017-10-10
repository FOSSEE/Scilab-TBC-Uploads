clc;
Vdd1=5;
Idss=0.005;
Rd1=1000;
Vout1=Vdd1-(Idss*Rd1);
Vdd=5;
Id=0;
Rd=1000;
Vout2=Vdd-(Id*Rd);
disp('V',Vout1,"Vout1=");//The answers vary due to round off error
disp('V',Vout2,"Vout2=");//The answers vary due to round off error






