clc
disp("Example 1.76")
printf("\n")
disp("Find the diode current and power dissipation")
Vdc=12
Vz=4.3  //zener voltage
R=820
Iz=(Vdc-Vz)/R
Pd=Vz*Iz
printf("the diode current=\n%f ampere\n",Iz)
printf("the power dissipation=\n%f watt\n",Pd)
