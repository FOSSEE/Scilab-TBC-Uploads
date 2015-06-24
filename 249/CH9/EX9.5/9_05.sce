clear
clc
//Concentration of A(mol/litre)
CAo=4;
//Flow rate of A(mol/min)
FAo=1000;
XA=0.8;
Cp=250;//cal/molA.K
Hr=18000;//cal/molA
//Using Xa vs T chart of fig 9.3 at 80% conversion
//Reaction Rate has the value 0.4 mol/min.litre
rA=0.4;
//From the performance eqn for mixed flow,Volume(l) is
V=FAo*XA/rA;
printf("\n Part a")
printf("\n The size of reactor(litres) needed is %f",V)
slope=Cp/Hr;
//Using graph
Qab1=Cp*20;//cal/molA
Qab=Qab1*1000;//cal/min
Qab=Qab*0.000070;//KW
printf("\n Part b")
printf("\n Heat Duty(KW) of precooler is %f",Qab)
Qce1=Cp*37;//cal/molA fed
Qce=Qce1*1000;//cal/min
Qce=Qce*0.000070;//KW
printf("\n Heat Duty(KW) of postcooler is %f",Qce)

