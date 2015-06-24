clc
disp("Example 1.75")
printf("\n")
disp("Find the current through diode at 50c & 80c")
T1=50
T2=80
D=3.2*10^-3
Pd1=400*10^-3
Vz=6.2
//at 50c
Izm1=Pd1/Vz
//at 80c
Pd2=Pd1-((T2-T1)*D)
Izm2=Pd2/Vz
printf("the current through diode at 50c & 80c=\n%f ampere\n%f ampere\n",Izm1,Izm2)
