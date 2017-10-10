close();
clear;
clc;
Rf = 5*10^6; //ohm
Rl = 14*1000; //ohm
rds = 40*1000; //ohm
gm = 1*10^(-3); //mS
//(a)
//volatge gain ratio 'Av'
Av = Rl*rds*(1-Rf*gm)/(Rf*rds+Rl*rds+Rl*Rf);
mprintf("(a) Av = %0.2f\n\n",Av);

//(b)
//Applying KVL around outer loop
//vi = i*Rf + Av*vi
Zin = Rf/(1-Av); //ohm
mprintf("(b) Zin = %d kohm\n\n",Zin/1000);

//(c)
zo = rds*Rf/(rds+Rf); //ohm
mprintf("(c) zo = %0.2f kohm\n\n",zo/1000);

//(d)
Ai = Av*Zin/Rl;
mprintf("(d) Ai = %0.1f",Ai);
