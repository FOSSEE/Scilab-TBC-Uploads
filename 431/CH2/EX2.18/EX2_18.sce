//calculating resistance required in series
//Chapter 2
//Example 2.18
//page 124
clear;
clc; 
disp("Example 2.18")
V=230;                    //voltage supply in volts
Ia=20;                    //armature current in amperes
Ra=0.5;                    //armature resistance in ohms
E=V-(Ia*Ra);
printf("E=%dV",E)
disp("when extra resistance is added in the armature circuit,the speed is halved")
E2=E/2;
R=((V-E2)/Ia)-Ra;
disp("The load torque is conatant")
printf("extra resistance in the armature circui,R=%fohms",R)
disp("The load torque directly proportional to square of speed")
disp("if N is halfed, Iais one-fourthed")
Ia2=Ia/4;
R=((V-E2)/Ia2)-Ra;
printf("extra resistance in the armature circui,R=%fohms",R)




