clc
f=1.2*(10^6);...............................//Assigning values to parameters
Yn=56;
deltalat=37.45;
x=23.44*sind(0.9856*(Yn-80.7));
deltah=acosd(tand(x)/tand(deltalat));
y=acosd((sind(deltalat)*sind(x))+(cosd(deltalat)*cosd(x)*cosd(deltah)));
disp("degree",x,"Solar declination");
disp("degree",deltah,"hour angle of the sun");
disp("degree",y,"Solar zenith angle");
m=4.8*(10^(-26));................//mean molecular mass of air
k=1.38*(10^(-23));...............//Boltzmann constant
g=9.8;...........................//gravitational constant
e=1.6*(10^(-19));....//electron charge
me=9.11*(10^(-31));
epsilon=8.85*(10^(-12));
hmax=[100 200 300 120 250];
T=[341 1360 1710 341 1540];
f=1.2*(10^6);
Nm=[1.5*10^11 3*10^11 12.5*10^11 0.8*1010 4*1011];
h=[122 256 335 132 276];
for i=1:5
    H(i)=(g * m * [h(i)-hmax(i)])/ (k * T(i));
    No(i)=(Nm(i)*(secd(x)^0.5));
    Ne(i)=((No(i))*exp(0.5*(1-(H(i)-secd(x)*exp(-H(i))))));
    fc(i)=(1/(2*3.14))*(sqrt(((e^2)*(Ne(i)))/(epsilon*me)));
    n(i)=sqrt(1-((fc(i)^2)/(f^2)));
    disp(Ne(i),"Electron density of each layer:");
    disp(fc(i),"Critical frequency of each layer:");
    disp(n(i),"Refractive index of each layer:");       
end

