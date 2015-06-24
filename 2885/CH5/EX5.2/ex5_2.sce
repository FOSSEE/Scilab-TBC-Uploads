//Find the value of drain current
clear;
clc;
//soltion
//given
Vgso=-5;//V          //gate to source cut off voltage
Idss=20*10^-3;//A     //drain to source current with gate shorted

//At vgs = -2 V
vgs=-2;//V        input voltage
id=Idss*(1-(vgs/Vgso))^2;          //Schockley's equation
printf("Drain current is (At vgs = -2 V) %.1f mA\n",id*10^3);

//At vgs = -4 V
vgs=-4;//V        input voltage
id=Idss*(1-(vgs/Vgso))^2;          //Schockley's equation
printf("Drain current is (At vgs = -4 V) %.1f mA\n",id*10^3);

//At vgs = -8 V
printf("Drain current is 0 A (At vgs = -8 V) because gate is biased beyond cut off ");
