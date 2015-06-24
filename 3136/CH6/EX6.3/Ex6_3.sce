clear all; clc;
//Answer of H_ib given in the book is 5830,however it is incorrect. The correct answer is found out to be 5837.4883

disp("rho_a=p/(R*T)")
rho_a=(13.7*0.491*144)/(53.33*(-10+460))
printf(" rho_a= %0.5f lbm/ft^3",rho_a)

disp("Qb=Q*(Nb/Na)")
Q=(180/0.0403)*(12000/25000)
printf(" q= %0.0f cfm",Q)

disp("Hb=Ha*((Nb/Na)^2)")
disp("we obtain")
disp("((p2/p1)^((k-1)/k)_b)=[((p2/p1)^((k-1)/k)_a)-1]*((Nb/Na)^2)*(T1a/T1b)+1")
//let x=((p2/p1)^((k-1)/k)_b)
p2=34.5
p1=13.7
//let y=((k-1)/k)
y=0.2857
Nb=12000
Na=25000
T_1a=450
T_1b=535
x=[(p2/p1)^(y)-1]*((Nb/Na)^2)*(T_1a/T_1b)+1
printf(" ((p2/p1)^((k-1)/k)_b)=%0.4f\n",x)

disp("So p2b=((1.0585)^3.5)*(p1b)")
p_1b=30
p_2b=((1.0585)^3.5)*(p_1b)
printf(" p2b= %0.1f in.Hg",p_2b)

disp("H_ib=[(k*R*T_1b)/(k-1)]*[((p2/p1)^((k-1)/k)_b)-1]")
k=1.4
R=53.33
T_1b=535
p2=36.6
p1=30
y=0.2857
H_ib=[(k*R*T_1b)/(k-1)]*[((p2/p1)^y)-1]
printf(" H_ib=%0.4f ft-lbf/lbm",H_ib)//Answer of H_ib given in the book is 5830,however it is incorrect. The correct answer is found out to be 5837.4883 on calculating

disp("rho_b*Qb=mb")
mb=(30*0.491*144)/(53.33*535)*2144
printf(" mb= %0.1f lbm/min",mb)

disp("Thus Psb=mb*Hib/Eta")
P_sb=159.4*5830/(60*550*0.70)
printf(" Psb= %0.1f hp",P_sb)




































