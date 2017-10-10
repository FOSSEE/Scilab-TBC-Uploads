//Book Name:Fundamentals of Electrical Engineering
//Author:Rajendra Prasad
//Publisher: PHI Learning Private Limited
//Edition:Third ,2014

//Ex10_5.sce

clc;
clear;
f=50;
N=285;
Ns=300;  //which is near the value of N as slip lies b/w 0.03 to 0.05

printf("\n (a)")
p=(120*f)/Ns;
printf("\n  Number of poles=%d \n",p)

printf("\n (b)")
s=(Ns-N)/Ns;
s_percentage=s*100;
printf("\n  Slip at full load=%d percentage \n",s_percentage)

printf("\n (c)")
//slip is proportional to rotor resistance
s=2*s_percentage;
printf("\n  Slip at full load if rotor resistance is doubled=%d percentage \n",s)

printf("\n (d)")
//copper loss=I^2*R; so copper loss doubles if rotor resistance doubles
Pcu=280;
Pcu_new=2*Pcu;
printf("\n  The new value of rotor copper loss=%d watt \n",Pcu_new)
