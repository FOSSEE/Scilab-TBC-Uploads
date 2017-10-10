close();
clear;
clc;
Rab = 6; //ohm
Rbc = 6; //ohm
Rac = 6; //ohm
Rad = 10; //ohm
RcB1 = 8; //ohm
RcB2 = 4; //ohm
RcB3 = 10; //ohm
RAb = 4; //ohm
RAd1 = 4; //ohm
RAd2 = 4; //ohm
RAd3 = 6; //ohm
//after transformation of network abc into star network
Rao = Rab*Rac/(Rab+Rbc+Rac); //ohm
Rbo = Rab*Rbc/(Rab+Rbc+Rac); //ohm
Rco = Rbc*Rac/(Rab+Rbc+Rac); //ohm
RAd = RAd1+RAd2+RAd3;
RcB = RcB1+RcB2+RcB3;
RAo = Rbo+RAb;
RoB = Rco+RcB;
Rod = Rao+Rad;
RoB = RoB*Rod/(RoB+Rod);
RAB1 = RAo + RoB;
RAB = RAB1*RAd/(RAB1+RAd);
mprintf("Equivalent resistance across A and B is, RAB = %0.3f ohm",RAB);