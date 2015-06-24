clear;
clc;
funcprot(0);

//Example - 2.8
// Page number - 49
printf("Example - 2.8 and Page number - 49\n\n");

//Given
T = 0 + 273.15;//[K] - Temperature
R = 8.314;//[J/mol*K] - Universal gas constant

//Virial equation of state, Z=1+(B/V)+(C/V^(2))
//From above equation we get (Z-1)*V=B+(C/V)

P=[50,100,200,400,600,1000];
Z=[0.9846,1.0000,1.0365,1.2557,1.7559,2.0645];
V=zeros(6);
k=zeros(6);
t=zeros(6);
for i=1:6;
    V(i)=(Z(i)*R*T)/(P(i)*101325);//[m^(3)/mol]
    k(i)=(Z(i)-1)*V(i);
    t(i)=1/V(i);
end
[C,B,sig]=reglin(t',k');

//From the regression, we get intercept=B and slope=C,and thus,
printf(" The value of second virial coefficient (B) is %e m^(3)/mol\n",B);
printf(" The value of third virial coefficient (C) is %e m^(6)/mol^(2)",C);

