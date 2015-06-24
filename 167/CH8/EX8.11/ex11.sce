//example 11
//exergy destruction during expansion of steam
clear
clc
P1=1 //in MPa
T1=300 //in celsius 
u1=2793.7 //kJ/kg
v1=0.25799 //m3/kg
s1=7.1246 //kJ/kg-K
P2=200 //in kPa
T2=150 //in °C
u2=2577.1 //in kJ/kg
v2=0.95986 //in m3/kg
s2=7.2810 //in kJ/kg-K
P0=100 //in kPa
T0=298//in K
u0=104.83 //in kJ/kg
v0=0.00103 //in m3/kg
s0=0.3672 //in kJ/kg-K
m=0.05 //in kg
X1=m*((u1-u0)-T0*(s1-s0)+P0*(v1-v0)) //initial exergy of the system in kJ
X2=m*((u2-u0)-T0*(s2-s0)+P0*(v2-v0))//final exergy of the system in kJ
dX=X2-X1 //exergy change for the process in kJ
Qout=2 //Heat losses from the system to the surroundings in kJ
Wbout=-Qout-m*(u2-u1) //total boundary work done by the system,including the work done against the atmosphere to push the atmospheric air out of the way during the expansion process in kJ
Wu=Wbout-P0*m*(v2-v1) //useful work in kJ
Xdestroyed=X1-X2-Wu //exergy destroyed in kJ
n=Wu/(X1-X2) //second law efficiency for this process
printf("\n Hence, the exergy of the steam at the initial state is = %.1f kJ. \n",X1);
printf("\n Hence, the exergy of the steam at the final state is = %.1f kJ. \n",X2);
printf("\n Hence, the exergy change of the steam is = %.1f kJ. \n",dX);
printf("\n Hence, the exergy destroyed is = %.1f kJ. \n",Xdestroyed);
printf("\n Hence, the exergy destroyed is = %.1f percent. \n",n*100);
