
//To determine the power fed into the supply system
//Page 410
clc;
clear;
W=200;
RI=10/100; //Rotational Intertia
Eff=75/100; //Effeciency of Conversion
G=2;
V1=60;
V2=20;
D=4000; //Distance covered during the speed change in m
r=40;
We=(1+RI)*W;

Ftb=W*((98.1*G)-r); //Tractive Effort during Retardation

KE=0.01072*(We/W)*200*((V1^2)-(V2^2))/1000; //K.E(in kWhr) Available due to change in speed

EquiEE=Ftb*D/(3600*1000); //Equivalent Electrical Energy

TE=KE+EquiEE; //Total Energy Regenarated

ERS=Eff*TE; //Energy Returned to the Supply

B=((V1^2)-(V2^2))/(2*D*3600); //Retardation
Tb=V1-V2/B; //time taken during retardation

PRS=ERS*3600/Tb; //Power Returned due to Retardation

//If there is no change in speed, Net Reactive force is Tractive Effort due to retardation

Vm=V1; //Maximum Speed 

//Power that Can be fed into the system
PFS=0.278*Ftb*Vm/1000; //In Kilowatts

APFS=Eff*PFS; //Actual Power Fed Back into the supply system

printf('The Power Fed Back into the supply system is %g kW\n',APFS)
