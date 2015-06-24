//Page Number: 371
//Example 7.3
clc;
//Given
Pout=250D+3; //W
V0=25D+3; //V
I0=25; //A
ebym=1.76D+11;
B0=0.035; //T
a=4D-2; //m
b=8D-2; //m


//(i) Efficiency
n=Pout/(V0*I0);
disp('%',n*100,'Efficiency:');

//(ii) Cyclotron frequency
f=(ebym*B0)/(2*%pi);
disp('Ghz',f/10^9,'Cyclotron frequency:');

//(iii) Cut off magnetic field
x=(b/((b*b)-(a*a)))^2;
y=((8*V0*x)/ebym);
B=sqrt(y);
disp('mT',B*1000,'Cut off magnetic field:');

//(iv) Cut off voltage
V=(ebym*B0*B0)/(8*x);
disp('KV',round(V/1000),'Cut off voltage:');

//Answer for Cyclotron frequency is is given as 9.8GHz but it should be 0.98 GHz as value of B0=0.035 not 0.35 as taken in part 2
