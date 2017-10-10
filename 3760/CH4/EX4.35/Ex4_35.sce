clc;
V=230;//supply current
Pout=15000;//output voltage
Ra=0.2;//armature circuit resistance
Rse=0.1;//resistance of series field winding
Nf=1000;//shunt field turns per pole
//Data for magnetization curve at 1500 rpm
If_=[0 0.2 0.4 0.6 0.8 1.02 1.15 1.32 1.56 1.92 2.4];//field current at 1500 rpm
Ea=[6 40 80 120 160 200 220 240 260 280 300];//counter emf at 1500 rpm and respective field current
plot(If_,Ea);//Magnetization curve at 1500 rpm
Ia_1=4;//armature current at rated voltage and rated load
Ia_2=70;//armature current at 1200rpm

//At no load
Ea_=V-Ia_1*Ra;//counter emf
//field current required for Ea_(ie.229.2 V),from O.C.C. is 1.23 A.

//At load
Ea__=V-Ia_2*(Ra+Rse);//counter emf at 1200 rpm
Ea___=209*(1500/1200);//Ea at speed of 1500 rpm
//Field current corresponding to Ea___(ie.261.25 V),from O.C.C. is 1.575 A.
//Total D-axis mmf per pole=Nf*If+Ns*Is
If=1.23;//field current at 229.2 V is 1.23 A
If1=1.23;//field current at 261.25 V is 1.575 A
//1.575*1000=1.23*1000+Ns*(70)
Ns=(0.345*1000)/70;//series field turns
printf('For long-shunt connection, series field turns is equal to %f.',round(Ns));
