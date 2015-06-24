//Example 1.6

clear;

clc;

Ri1=100*10^3;

Ri2=100*10^3;

//Using standard equation for difference amplifier 
//vo=(R2/R1)(((1+(R1/R2))/(1+(R3/R4)))v2-v1)=v2-3v1
//Ri1=R1, Ri2=R3+R4, Ro=0

R1=Ri1;

R2=3*R1;

//Solving the equations R3+R4=Ri2=100kohms and 3[(1+(1/3))/(1+(R3/R4))]=1
//3[4/3((R3+R4)/R4)]=1
//As R3+R4=100 -> 4/(100/R4)=1 -> (4R4)/100=1 -> R4/25=1 -> R4=25kohms

R4=25*10^3;//By solving the equations mentioned above

R3=Ri2-R4;//From standard equations

printf("Designed Difference Amplifier :");

printf("\nR1=%.2f kohms",(R1/1000));

printf("\nR2=%.2f kohms",(R2/1000));

printf("\nR3=%.2f kohms",(R3/1000));

printf("\nR4=%.2f kohms",(R4/1000));
