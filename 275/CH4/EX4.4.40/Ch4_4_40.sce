clc
disp("Example 4.40")
printf("\n")
disp("Design the SCR crowbar circuit to protect the load from voltage levels greater than 12V")
printf("Given\n")
//gate trigger voltage
Vgt=0.75
//load voltage maximum
VLmax=12
//Zener voltage is
Vz=VLmax-Vgt
//assume zener current(mini) as
Izmin=10^-3
R=Vgt/Izmin
printf("zener voltage \n%f volt\n",Vz)
printf("Resistance \n%f ohm\n",R)
