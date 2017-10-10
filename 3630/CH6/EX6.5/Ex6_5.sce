clc;
B=300;
Ie=0.03; //Ampere
Ib=0.0001; //Ampere
A=B/(B+1);
Ic1=A*Ie; //Ampere
Ic2=B*Ib //Ampere
disp('Amperes',Ic1,"Ic1=");//The answers vary due to round off error
disp('Amperes',Ic2,"Ic2=");//The answers vary due to round off error

