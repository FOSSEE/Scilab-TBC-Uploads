clc;
//magnetization curve at 1200 rpm
If=[0 0.2 0.4 0.6 0.8 1 1.2 1.4 1.6 1.8];//field current in rpm
Ea=[6 53 106 160 209 241 258 272 282 288];//induced voltage in armature
plot(If,Ea);xlabel('If');ylabel('Ea');//magnetization curve at 1200 rpm
Pout=10000;//genertor output in watts
Vt=230;//Terminal Voltage
Ra=0.5;//armature resistance with brushes
Ns=1000;//turns of shunt winding
Nf=4;//turns of field winding
Z=1000;//No of conductors

//PART (A)
//At rated output current the speed is 1150 rpm & shunt field current is 1 A
If_=1;//field current at rated o/p current
Il=Pout/Vt;//rated output current
Ia=Il+If;//armature current at rated load
Is=Ia;//for long shunt compound generator the series field current is equal to armature current
//Since the compound geenerator is cumulatively compounded ,the total pole per m.m.f. is (Nf*If+Ns*Is)ampere turns
//Thus the equivalent shunt field current is given by 1/Nf*(Nf*If+Ns*Is)=1+(4*44.5/1000)=1.18 A. The generated emf for this field currenr from the magnetization curve is 257 volts.
//For speed of 1150 rpm the generated emf is-
Ea_=257*(1150/1200);
Vt_=Ea_-Ia*Ra;//terminal voltage

//PART(B)
Eg=Vt+Ia*Ra;//generated emf in the armature at 1150 rpm
//By using the magnetization curve, the generated emf at 1200 rpm will be 252.25*(1200/1500)=263.3 volts.
//From the open circuit characteristics, the field current corresponding to 263.3 volts is 1.26 A.
MMFt=1.26*1000;//Total MMF
//Total MMF must be produced by the combined action of shunt & series windings.
//1.26*1000=1.00*1000+Ns*(44.5);
Ns_=(0.26*1000)/44.5;//series field turns
printf('The number of series field turns should be %f.',round(Ns_));
