clc;
//Ex3.19
IT=0.00495; //Ampere
Vz=9.1; //volt
RL=10000; //ohm
IL=Vz/RL; //Ampere//fromV=R*I
Iz=IT-IL; //Ampere/Iz=IT-IL;
disp('mA',Iz*1000,"Iz="); //The answers vary due to round off error

