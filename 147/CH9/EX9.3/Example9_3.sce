close();
clear;
clc;
Vgsq = 6.9; //V
//from drain characterstics of Fig 9.9(b), 
Vt = 4; //V
Id_on = 5; //mA
Vgs_on = 8; //V
Idq = Id_on*(1-Vgsq/Vt)^2; //mA
mprintf("Idq = %0.2f mA",Idq);