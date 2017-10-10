close();
clear;
clc;
//line voltage 'Vl', resistance 'R', reactance 'X'
Vl = 207.8; 
R = 36;
X = 48;
//inpedance
Z = sqrt(R^2 + X^2);
//(a)phase current 'Ip'
Ip = Vl/Z; //A
mprintf("Phase current, Ip = %0.2f A\n\n",Ip);

//(b)line current 'Il'
Il = sqrt(3)*Ip; //A
mprintf("Line current, Il = %d A\n\n",round(Il));

//(c)power factor 'pf'
pf = R/Z;
mprintf("Power factor, pf = %0.1f lagging\n\n",pf);

//(d)total power 'P'
P = sqrt(3)*Vl*Il*pf; //W
mprintf("Total power, P = %d W",round(P));
