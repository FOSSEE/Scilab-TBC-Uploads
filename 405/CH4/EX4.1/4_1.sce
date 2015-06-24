clear;
clc;
printf("\t\t\tExample Number 4.1\n\n\n");
// steel ball cooling in air 
// illustration4.1
// solution

h = 10;// [W/square meter per degree celsius] convectional heat transfer coefficient
k = 35;// [W/m per degree celsius] heat transfer coefficient
c = 460;// [kJ/kg]
r = 0.05/2;// [m] diameter of ball 
Tb = 450;// [degree celsius] ball temperature
Te = 100;// [degree celsius] environment temperature 
A = 4*%pi*r^(2);
V = 4*%pi*r^(3)/3;
// We anticipate that the lumped capacity method will apply because of the low value of h and high value of k
// we check by using equation (4-6)
K = h*(V/A)/k;
// since the value of K is less than 0.1 so we will use equation (4-5)
T = 150;// [degree celsius] attained temperature by the ball
rho = 7800;// [kg/cubic meter] density of the ball
a = (h*A)/(rho*c*V);
t = log((T-Te)/(Tb-Te))/(-a);// [s] time required to attain the temperature of 150 degree celsius
printf("time required to attain the temperature of 150 by degree celsius by the ball is %f h",t/3600);

    
