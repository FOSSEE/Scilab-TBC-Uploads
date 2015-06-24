clc
disp("Example 4.41")
printf("\n")
disp("Design the SCR crowbar circuit to protect the load from voltage levels greater than 7.5V")
printf("Given\n")
//gate trigger voltage
Vgt=0.7
//load voltage maximum
VLmax=7.5
//Zener voltage is
Vz=VLmax-Vgt
//assume zener current(mini) as
Izmin=10^-3
R=Vgt/Izmin
printf("zener voltage \n%f volt\n",Vz)
printf("Resistance \n%f ohm\n",R)
