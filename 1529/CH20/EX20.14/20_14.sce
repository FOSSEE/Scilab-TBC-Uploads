//Chapter 20, Problem 14
clc;
f=50;                           //supply frequency
Rp=30;                          //resistance
C=80e-6;                        //capacitance
Vl=400;                         //3 phase supply
Xc=1/(2*%pi*f*C);               //capacitive reactance
Zp=sqrt(Rp^2+Xc^2);             //phase impedance,
pf=Rp/Zp;                       //power factor
phi=acos(pf);                   //phase angle
Ip=Vl/Zp;                       //phase current
Il=sqrt(3)*Ip;                  //line current
P=sqrt(3)*Vl*Il*cos(phi);       //power dissipated
S=sqrt(3)*Vl*Il;                //total KVA
printf("(a) Phase current = %.3f A\n\n",Ip);
printf("(b) Line current = %.2f A\n\n",Il);
printf("(c) Total power dissipated = %.3f kW\n\n",P/1000);
printf("(d) Total kVA = %.3f kVA\n\n",S/1000);
printf("The phasor diagram for the load is shown in Fig. 20.18");
