//Chapter 20, Problem 4, Fig.20.7
clc;
Vl=415;                             //3-phase supply
Pr=24000;                           //resistance in ohm
Py=18000;                           //resistance in ohm
Pb=12000;                           //resistance in ohm
Vp=Vl/sqrt(3);                      //phase voltage
Ir=Pr/Vp;                           //current in each line
Iy=Py/Vp;
Ib=Pb/Vp;

//calculating current in the neutral conductor
Irh=cos(90*%pi/180);
Iyh=cos(330*%pi/180);
Ibh=cos(210*%pi/180);
Irv=sin(90*%pi/180);
Iyv=sin(330*%pi/180);
Ibv=sin(210*%pi/180);
Ih=(Ir*Irh)+(Iy*Iyh)+(Ib*Ibh);
Iv=(Ir*Irv)+(Iy*Iyv)+(Ib*Ibv);
In=sqrt(Ih^2+Iv^2);

printf("(a) Ir = %d A\n\nIy = %d A\n\nIb = %d A\n\n",Ir,Iy,Ib);
printf("(b) The three line currents are shown in the phasor diagram of Fig. 20.8.\n");
printf("Since each load is resistive the currents are in phase with the phase voltages and are hence mutually displaced by 120◦.");
printf("\nIn = %f A\n",In);
