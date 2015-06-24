clear;
clc;
funcprot(0);

//Example - 10.8
//Page number - 341
printf("Example - 10.8 and Page number - 341\n\n");

//Given
// (1)
T = 311;//[K] - Temperature
R = 8.314;//[J/mol*K] - Universal gas constant
// Pressure in 'bar' is given below
P = [0.690,1.380,2.760,5.520,8.280,11.034,13.800,16.550];
// Molar volume in 'm^(3)/mol' is given below
V = [0.0373,0.0186,0.00923,0.00455,0.00298,0.00220,0.00175,0.00144];

// Z = 1 + (B/V) + (C/V^(2))
// (Z-1)*V = B + (C/V)


Z=zeros(8);
k=zeros(8);
t=zeros(8);
for i=1:8;
    Z(i)=(P(i)*10^(5)*V(i))/(R*T);
    k(i)=(Z(i)-1)*V(i);
    t(i)=1/V(i);
end
[C,B,sig]=reglin(t',k');

//From the regression, we get intercept = B and slope = C,and thus,

printf(" (1).The second virial coefficient of CO2 is given by B = %e m^(3)/mol\n",B);
printf("     The thied virial coefficient of CO2 is given by C = %e m^(6)/mol^(2)\n\n",C);

// (2)
P_final = 13.8;//[bar]
// We know that R*T*log(f/P) = integrate('V-(R*T)/P','P',0,P)
// Therefore we have to plot V - (R*T)/P versus P and calculate the area beneath the curve from 0 to 13.8 bar
// For this we need the value of the term V - (R*T)/P at P = 0. At low pressure the virial equation becomes
// Z = 1 + (B/V)
//and V - (R*T)/P = (Z*R*T)/P - (R*T)/P = (1 + (B/V))*((R*T)/P) - (R*T)/P = (B*R*T)/(P*V) = (B/Z)
// Thus lim P tending to zero (V - (R*T)/P) = B    ( as P tend to zero, Z tend to 1 ) 

P_prime = [0.000,0.690,1.380,2.760,5.520,8.280,11.034,13.800];
V_prime = [0.000,0.0373,0.0186,0.00923,0.00455,0.00298,0.00220,0.00175];
summation = 0;
x=zeros(8);
y=zeros(8);
z=zeros(8);
for j=2:8;
    x(j)=V_prime(j)-(R*T)/(P_prime(j)*10^(5));//[m^(3)/mol]
    y(j)=(x(j) + x(j-1))/2;
    z(j)=y(j)*((P_prime(j)-P_prime(j-1)))*10^(5);
    summation = summation + z(j) ;//[J/mol]
end

summation = summation + 2*z(2) - z(2);// Because in the above calculation,in order to calculate the average a summation of z(2) is not included,only half of it gets added

// Now we have, area = integrate('V - (R*T)/P','P',0,13.8*10^(5)) = summatiom
// R*T*log(f/P) = summation
f = P_final*(exp(summation/(R*T)));//[bar]

printf(" (2).The fugacity of steam at 311 K and 13.8 bar pressure is %f bar",f);


