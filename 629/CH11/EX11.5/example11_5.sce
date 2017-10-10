clear
clc
//Example 11.5 COMPARING DRAG ON BLUFF AND STREAMLINED SHAPES
Re=7*10^5; //Reynolds number
Cdc=0.2; //Cd for cylinder, from Ex.11.1
//Interpolating Re for streamlined shape
Cds=0.034;
//Drag force ratio, from Eq.11.4
Dfr=Cds/Cdc //(Fds/Fdc)
printf("\nThe ratio of drag forces for streamlined shape to cylinder shape = %.2f.\n",Dfr)