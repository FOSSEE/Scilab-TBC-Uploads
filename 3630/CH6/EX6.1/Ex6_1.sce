clc;
B=300;
Ib=[0.00002 0.00005]; //Ampere
Ic1=B*Ib(1,1); //Ampere
Ic2=B*Ib(1,2); //Ampere
disp('mA',Ic1*1000,"Ic1=");
disp('mA',Ic2*1000,"Ic2=");
