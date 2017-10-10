clc;
R1=10000; //Ohm
R2=2200; //Ohm
Zbase1=5000; //Ohm
Req=(R1*R2)/(R1+R2); //Ohm
Zin1=(Req*Zbase1)/(Req+Zbase1);//Ohm
Zbase2=45000; //ohm
Zin2=(Req*Zbase2)/(Req+Zbase2);//Ohm
disp('kohm',Zin1/1000,"Zin=");//The answers vary due to round off error
disp('kohm',Zin2/1000,"Zin=");//The answers vary due to round off error


