//Answer for part(e) in book is incorrect.
clc;
//Magnetization curve is same as that of example 4.33
Ra=0.2;//armature resistance (including brushes)
Nf=2000;//shunt field turns
N=1500;//motor speed in rpm at no load as well as rated load.
Ia=36;//motor armature current in Amperes at rated load

//PART(a)-At no load,
Vt=230;//supply mains in volts
Ea_a=Vt;//counter emf, neglecting armature circuit resistance
If_a=1.23;//field current in amperes 
printf('(a) Shunt field current is %f A.\n',If_a);
//Thus constant shunt field current If from O.C.C. is 1.23 A corresponding to 230V.

//PART(b)-At full load,
Ea_b=Vt-Ia*Ra;//counter emf
//A point is drawn on magnetization curve with coordinates A(If,Ea_b).
//The horizontal distance between Pt. A & the magnetization curve, gives the effective armature reaction in terms of shunt field current, its value is 0.06 A.
AT_arm=Nf*0.06;//armature reaction in amopere turns per pole
printf('(b) Effective armature reaction is %f ampere turns per pole.\n',AT_arm);

//PART(c)-At rated load, with series winding in circuit & motor is cumulatively compounded,
Rse=0.05;//series field resistance in ohm
Ea__c=Vt-Ia*(Ra+Rse);//counter emf at 1350 rpm
Ea_c=Ea__c*(1500/1350);//Ea at 1500 rpm
//From magnetization curve, Ea=245.5 V requires If_c=1.365 A.
//From equation - Net MMF =Nf*If+Ns*Is-ATd ....(1)
//1.365*2000=1.23*2000+Ns*(36)-120
Ns=round(65/6);//Series field current
printf('(c) Required no of series field turns are %f.\n',Ns);

//PART(d)-If the series field winding has 20 turns -
Ns_=20;//no of turns of series field winding
//Net mmf = Nf*If+Ns_*Is-AT_arm ....(formula)
mmf_net=If_a*Nf+Ns_*Ia-AT_arm;//Net field mmf in terms of ATs
If_d=(If_a*Nf+Ns_*Ia-AT_arm)/Nf;//Net field mmf in terms of the equivalent shunt field current(A).
//From the magnetization curve, the value of Ea corresponding to If=1.53A is 258V at 1500rpm.
//But the counter emf,Ea corresponding to rated current is 230-36(0.2+0.05)=221 V.
//Therefore the motor speed n corresponding to Ea=221V is-
//(221/258)=(n/1500)
n=(221/258)*1500;
printf('(d) Speed at rated voltage rated armature current is %f rpm.\n',round(n));

//PART(e)-Assuming demagnetizing effect of armature reaction to be 200 ampere turns per pole.
ATarm=200;//demagnetizing effect of armature reaction in ampere turns per pole.
Ia_e=50;//armature current in amperes ....(given)
mmfnet=If_a*Nf+Ns_*Ia_e-ATarm;//from equation no ....(1)
If_e=mmfnet/Nf;//Net field mmf in terms of the equivalent shunt field current(A).
//From the magnetizing curve, corresponding to field current If_e(1.63 A), Ea at 1500 rpm is 264 V.
//But, Ea=Ka*phi*Wm ; where, phi = flux per pole
//Thus, Ka*phi=(264*60)/(2*%pi*1500)
Kaphi=264/(50*%pi);//Ka*phi
Test=Kaphi*Ia_e;//starting torque
printf('(e) When the armature current is limited to 50 A the starting torque is %f Nm.',Test);
