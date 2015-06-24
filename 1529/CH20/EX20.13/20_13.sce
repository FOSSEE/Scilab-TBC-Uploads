//Chapter 20, Problem 13
clc;
Vl=400;                         //supply voltage
Rp=30;                          //resistance
Xl=40;                          //inductive reactance
Zp=sqrt(Rp^2+Xl^2);             //phase impedance
Ip=Vl/Zp;                       //phase current
Il=sqrt(3)*Ip;                  //line current
pf=Rp/Zp;                       //power factor
P=sqrt(3)*Vl*Il*pf;             //power dissipated
S=sqrt(3)*Vl*Il;                //alternator output KVA
printf("(a) Current is supplied by alternator = %.3f A\n\n",Il);
printf("(b) Output power = %.2f kW\n",P/1000);
printf("    Alternator ouput KVA = %.2f KVA",S/1000);
