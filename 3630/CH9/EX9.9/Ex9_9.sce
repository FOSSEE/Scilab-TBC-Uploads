clc;
re=22.3; //Ohm
Hfe=200;
Zbase=Hfe*re; //Ohm
R1=18000; //Ohm
R2=4700; //Ohm
Req=(R1*R2)/(R1+R2); //Ohm
Zin=(Req*Zbase)/(Req+Zbase); //Ohm
disp('kohm',Zin/1000,"Zin=");//The answers vary due to round off error


