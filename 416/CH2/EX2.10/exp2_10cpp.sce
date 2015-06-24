clc
disp("example 2.10")
egd1=438*10^4;plp=0.2;pcf=0.15;//annual load duration ;annual  load factor;plant capacity factor
pml=egd1/(plp*8760)
pc=(pml*plp)/pcf
printf("annual load factor =energy generated during 1 year/(max. load)x8760=%.1f \n maximum load =%dkW",plp,pml)
printf("\ncapacity factor =(max.load/plant capacity)x(load factor)\n plant capacity =max.load/0.75 =%fMW \n reserve capacity =3.333-2.5=%fMW",pc,pc-pml)
