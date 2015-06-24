//Transport Processes and Seperation Process Principles
//Chapter 4
//Example 4.5-3
//Principles of Steady State Heat Transfer
//given data in si units
//nomenclature of unmentioned specifications similar to previous example
D=0.05;//diameter of the tube in m
A=%pi*D*D/4;
fr=4;//mass flow rate in kg/s
G=fr/A;
mu=7.1e-4;
Re=(D*G)/mu;
Cp=120;//Specific Heat in J/kg K
k=13;
Pr=(Cp*mu)/k
hl=(k/D)*0.625*((Re*Pr)^0.4);
dT=505-500;//when liq is heated from 500 to 505 K
q=fr*Cp*dT;
dTw=30;//temp diff b/w fluid and Tw
Ad=q/(hl*dTw);
L=Ad/(%pi*D);
mprintf("the tube length= %f m",L)
