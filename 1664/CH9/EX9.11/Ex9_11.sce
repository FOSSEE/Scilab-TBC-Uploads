


//Example No.9.11.
//Page No 272.
clc;clear;
p = 0.1;//Resistivity of P-type and N-type -[ohm m].
e = 1.6*10^(-19);//Electron charge.
Uh = 0.48;//Hole mobility -[m^2 V^-1 s^-1].
Ue = 1.35;//Electron mobility -[m^2 V^-1 s^-1].
ni = 1.5*10^(16);
d = (1/p);//Electrical conductivity
disp('For P-type material')
printf("\n1)The electrical conductivity is %.1f ohm^-1 m^-1",d);
Na = (d/(e*Uh));//Acceptor concentration.
printf("\n2)The acceptor concentration is %3.3e m^-3",Na);
n1 = (((ni)^(2))/(Na));//Minority carriers concentration.
printf("\n3)The minority carriers concentration is %3.3e m^-3",n1);
disp('For N-type semiconductor')
d = (1/p);//Electrical conductivity.
printf("\n2)The electrical conductivity is %.1f ohm^-1 m^-1",d);
Nd = (d/(e*Ue));//Donor concentration.
printf("\n2)The donor concentration is %3.3e m^-3",Nd);
n2 = (((ni)^(2))/(Nd));//Minority carriers concentration.
printf("\n3)The minority carriers concentration  is %3.3e m^-3",n2);
