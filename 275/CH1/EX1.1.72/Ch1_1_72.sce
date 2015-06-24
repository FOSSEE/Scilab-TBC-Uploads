clc
disp("Example 1.72")
printf("\n")
disp("Find the maximum current flow through Zener diode")
Vz=7.5    //zener voltage
Pd1=400*10^-3 //maximum power dissipation at 50c
T1=50
T2=100
D=3.2*10^-3
//current at 50c
Izm1=Pd1/Vz
//current at 100
Pd2=Pd1-((T2-T1)*D)
Izm2=Pd2/Vz
printf("maximum current flow through Zener diode at 50c & 100c=\n%f Ampere\n%f Ampere\n",Izm1,Izm2)
