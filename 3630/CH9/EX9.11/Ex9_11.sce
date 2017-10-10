clc;
re=19.8; //Ohm
Hfe=200;
Zbase=Hfe*re; //Ohm
R5=15000; //Ohm
R6=2500; //Ohm
Req=(R5*R6)/(R5+R6);//Ohm
Zin=(Req*Zbase)/(Req+Zbase); //Ohm
R3=5000; //Ohm
rc=(R3*Zin)/(R3+Zin); //Ohm
Av=rc/re;
disp(' ',Av,"Av=");//The answers vary due to round off error

