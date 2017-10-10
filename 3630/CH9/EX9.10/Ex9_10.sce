clc;
re=22.3; //Ohm
Hfe=200;
Zbase=Hfe*re; //Ohm
R1=18000; //Ohm
R2=4700; //Ohm
Req=(R1*R2)/(R1+R2); //Ohm
Zin=(Req*Zbase)/(Req+Zbase); //Ohm
rc=1150; //Ohm
RL=5000; //Ohm
Ai=Hfe*((Zin*rc)/(Zbase*RL));
disp(' ',Ai,"Ai=");//The answers vary due to round off error




