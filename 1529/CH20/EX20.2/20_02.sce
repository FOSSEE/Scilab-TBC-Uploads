//Chapter 20, Problem 2
clc;
R=30;                           //resistance of coil
f=50;                           //supply frequency
L=127.3e-3;                     //inductance of coil
Ip=5.08;                        //line current
Xl=2*%pi*f*L;                   //inductive reactance
Zp=sqrt(R^2+Xl^2);              //impedance of each phase
Vp=Ip*Zp;                       //phase voltage
Vl=sqrt(3)*Vp;                  //line voltage
printf("Line voltage = %.2f V",Vl);
