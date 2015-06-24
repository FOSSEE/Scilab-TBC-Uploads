//EX2_15 PG-2.52
clc
rz=4;//zener diode resistance
Vz=5.1;
Iz=25e-3;
x=Iz*rz;
Vzz=Vz+x;//total terminal voltage across the diode 
printf("Therefore total terminal voltage across the diode Vz''= %.1fV",Vzz)
