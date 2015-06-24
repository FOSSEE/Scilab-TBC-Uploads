//Chapter 22, Problem 18
clc;
T1=25;                      //torque of a shaft 1
T2=35;                      //torque of a shaft 2
Ia1=16;                     //armature current 1
phi2=0.85;                  //flux
Ia2=Ia1*T2/(phi2*T1);       //armature current 2
printf("Armature current = %.2f A",Ia2);
