//Electric Power Generation, Transmission and Distribution by S.N.Singh
//Publisher:PHI Learning Private Limited
//Year: 2012 ; Edition - 2 
//Example 3.4
//Scilab Version : 6.0.0    ; OS : Windows

clc;
clear;

MVAnew=100;                                                 //MVA reference in MVA
KVnew=11;                                                   //KV reference before Transformer in kV
KVnew1=132;                                                 //KV reference after Transformer in kV
MVAg1=100;                                                  //Apparent power in Generator 1 in MVA
KVg1=11;                                                    //Voltage at Generator bus 1 in kV
Xg1=0.25;                                                   //Reactance of Generator 1 at individual p.u. Ohm
MVAg2=150;                                                  //Apparent power in Generator 2 in MVA
KVg2=16;                                                    //Voltage at Generator bus 2 in kV
Xg2=0.10;                                                   //Reactance of Generator 2 at individual p.u Ohm
MVAg3=200;                                                  //Apparent power in Generator 3 in MVA
KVg3=21;                                                    //Voltage at Generator bus 3 in kV
Xg3=0.15;                                                   //Reactance of Generator 3 at individual p.u Ohm
MVAt1=150;                                                  //Apparent power in Transformer 1 in MVA
t1pry=11;                                                   //Primary voltage in Transformer 1 in kV
t1sec=132;                                                  //Secondary voltage in Transformer 1 in kV
Xt1=0.05;                                                   //Reactance of Transformer 1 at individual p.u Ohm
MVAt2=200;                                                  //Apparent power in Transformer 2 in MVA
t2pry=16;                                                   //Primary voltage in Transformer 2 in kV
t2sec=132;                                                  //Secondary voltage in Transformer 2 in kV
Xt2=0.10;                                                   //Reactance of Transformer 2 at individual p.u Ohm
MVAt3=250;                                                  //Apparent power in Transformer 3 in MVA
t3pry=21;                                                   //Primary voltage in Transformer 3 in kV
t3sec=132;                                                  //Secondary voltage in Transformer 3 in kV
Xt3=0.05;                                                   //Reactance of Transformer 3 at individual p.u Ohm
Xl1=100;                                                    //Reactance of Transmission line 1 at individual p.u Ohm
Xl2=50;                                                     //Reactance of Transmission line 2 at individual p.u Ohm
Xl3=80;                                                     //Reactance of Transmission line 3 at individual p.u Ohm
X1=Xg1*(MVAnew/MVAg1)*(KVg1/KVnew)^2;                       //Reactance of Generator 1 at individual p.u Ohm
X2=Xg2*(MVAnew/MVAg2)*(KVg2/KVnew)^2;                       //Reactance of Generator 2 at individual p.u Ohm
X3=Xg3*(MVAnew/MVAg3)*(KVg3/KVnew)^2;                       //Reactance of Generator 3 at individual p.u Ohm
T1=Xt1*(MVAnew/MVAt1)*(t1pry/KVnew)^2;                      //Impedance of Transformer 1 at individual p.u Ohm
T2=Xt2*(MVAnew/MVAt2)*(t2pry/KVnew)^2;                      //Impedance of Transformer 2 at individual p.u Ohm
T3=Xt3*(MVAnew/MVAt3)*(t3pry/KVnew)^2;                      //Impedance of Transformer 3 at individual p.u Ohm
Zb=((KVnew1)^2)/MVAnew;                                     //Base Reactance of Transmission line at Ohm
L1=Xl1/Zb;                                                  //Reactance of Transmission line 1 at individual p.u Ohm
L2=Xl2/Zb;                                                  //Reactance of Transmission line 2 at individual p.u Ohm
L3=Xl3/Zb;                                                  //Reactance of Transmission line 3 at individual p.u Ohm


printf("\nPer unit impedance of Generator 1 is %.3f p.u",X1);
printf("\nPer unit impedance of Generator 2 is %.3f p.u",X2);
printf("\nPer unit impedance of Generator 3 is %.3f p.u",X3);
printf("\nPer unit impedance of Transformer 1 is %.3f p.u",T1);
printf("\nPer unit impedance of Transformer 2 is %.3f p.u",T2);
printf("\nPer unit impedance of Transformer 3 is %.3f p.u",T3);
printf("\nPer unit Reactance of line 1 is %.3f p.u",L1);
printf("\nPer unit Reactance of line 2 is %.3f p.u",L2);
printf("\nPer unit Reactance of line 3 is %.3f p.u",L3);


















