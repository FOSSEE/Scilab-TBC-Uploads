clc;
B=200;
Ie=0.015; //Ampere
Ib=Ie/(B+1); //Ampere
Ic=B*Ib; //Ampere
disp('micro Amperes',Ib*1000000,"Ic=");//The answers vary due to round off error
disp('mA',Ic*1000,"Ie=");//The answers vary due to round off error
