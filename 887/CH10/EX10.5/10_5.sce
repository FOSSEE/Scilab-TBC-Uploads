clc
//ex10.5
V_1=10;
V_2=3;
R_1=4*10^3;
R_2=6*10^3;
//1)analysis by assuming D1 off and D2 on
I_D_2=V_2/R_2;      //ohm's law
//applying KVL
V_D_1=7;      //contradiction to 'D1 is off'
//this assumption is not correct

//2)analysis by assuming D1 on and D2 off
I_D_1=V_1/R_1;      //ohm's law
//applying KVL
V_D_2=-V_1+V_2+I_D_1*R_1;
//we get V_D_2 which is consistent
disp('correct assumption is D2 off and D1 on')
