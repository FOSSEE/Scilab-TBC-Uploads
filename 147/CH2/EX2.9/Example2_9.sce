close();
clear;
clc;
Rab = 3; //ohm
Rbc = 6; //ohm
Rac = 9; //ohm
Rad = 4.5; //ohm
Rcd = 3; //ohm
//transforming abc network into star network
Rbo = Rab*Rbc/(Rab+Rbc+Rac);
Rao = Rab*Rac/(Rab+Rbc+Rac);
Rco = Rbc*Rac/(Rab+Rbc+Rac);
Rod1 = Rao+Rad;
Rod2 = Rco+Rcd;
Rod = Rod1*Rod2/(Rod1+Rod2);
//equivalent resistance at terminals AB
RAB = Rbo + Rod;
mprintf("\nThe equivalent resistance at terminals AB = %d ohm",RAB);