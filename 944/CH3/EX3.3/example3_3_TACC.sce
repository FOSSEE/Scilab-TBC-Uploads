//example 3.3

clear;
clc;

//given:
H=29.2;//latent heat of vaporisation[KJ/mol]
T=332;//temperature of the system[K]
R=8.314;//universal gas constant [J/K/mol]


//to find Q,W,U for 1 mole of bromine vaporizes
//where Q is heat absorbed or evolved
//W is the work done by system
//U is the change in internak energy
Qp=H;//at constant pressure [KJ]
W=-R*0.001*T;//workdone [KJ]
U=Qp+W;//change in internal energy[KJ]
printf("heat absorbed by the bromine vapours is %f KJ",Qp);
printf("\nworkdone during the process is %f KJ",W);
printf("\nchange in internal energy of the system is %f KJ",U);
