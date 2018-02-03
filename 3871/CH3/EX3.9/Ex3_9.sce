//===========================================================================
//chapter 3 example 9

clc;clear all;

//variable declaration
v      = 110.2;          //voltage drop in V
i      = 5.3;            //current in A
v1     = 0.2;            //uncertainity in measurements in V
i1     = 0.6;            //uncertanity in measurments in A

//calculations
erv     =  (v1/(v))*100;     //limiting error to voltage drop in %(ranging + to -)
eri     = (i1/(i))*100;      //limitng error in currrent in %(ranging + to -)
P       = v*i;                    //power dissipated in the resistor in W
eP      = (erv+eri);              //limting error in the power dissipation in %(ranging + to -)
p       = eP*P*10^-2;                   //power with limiting error in W
e       = erv+eri;                      //limiting error in power dissipation
P1      = P+p;                    //power dissipation is given in W
P11     = P-p;                    //power dissipation is given in W

//result
mprintf("power dissipated = %3.2f W',P);
mprintf("\nlimiting error in the power dissipation = %3.1f percentage",e)
mprintf("\nuncertanity in power ranging in %3.2f W to %3.2f",P11,P1);
