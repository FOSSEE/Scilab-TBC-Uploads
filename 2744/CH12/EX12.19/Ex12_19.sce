clear;
clc;
d = 3/8;// inches
n = 12;//no. of complete turns
D = 4;// inches
M = 75;// lb-inches
N = 12*10^6;// lb/in^2
alpha = 15*%pi/180;// degrees
E = 30*10^6;// lb/in^2
phi_dash = (64/d^4)*M*0.5*D*n*sec(alpha)*((2*(cos(alpha))^2)/E + ((sin(alpha))^2)/N);// radians
DELTA = 64*M*((0.5*D)^2)*n*sin(alpha)*((1/N) - (2/E))/d^4;// inches
printf('Angle of rotation phi_dash = %.4f radians or %.2f degrees',phi_dash,phi_dash*180/%pi);
printf('\n The axial deflection = %.4f inches',DELTA);

