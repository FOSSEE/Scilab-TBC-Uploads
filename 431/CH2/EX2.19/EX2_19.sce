//calculating resistance required in series and also the speedwhen torque is halfed
//Chapter 2
//Example 2.19
//page 125
clear;
clc; 
disp("Example 2.19")
V=250;                    //voltage supply in volts
Ia=50;                    //armature current in amperes
Ra=0.3;                    //armature resistance in ohms
N=1000;
E=V-(Ia*Ra);
printf("E=%dV",E)
disp("when extra resistance is added in the armature circuit when the speed is 800rpm")
N2=800;
E2=(E*N2)/N;
printf("\nE at 800rpm=%dV",E2)
R=((V-E2)/Ia)-Ra;
printf("\nextra resistance in the armature circui,R=%fohms",R)
disp("if load is halfed,Ia will be halfed")
Ia2=Ia/2;
E1=V-(Ia2*(Ra+R));
printf("E1=%dV",E1)
N1=(N2*E1)/E2;
printf("\nN1=%frpm",N1)
