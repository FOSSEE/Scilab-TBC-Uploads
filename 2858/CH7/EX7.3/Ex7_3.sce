//example 7.3
clc; funcprot(0);
pi=%pi
H=10;
Gamma=110;
phi=35*%pi/180;
alpha=15*%pi/180;
theta=10*%pi/180;
zi=asin(sin(alpha)/sin(phi))-alpha+2*theta;
disp(zi*180/%pi,"zi in degrees");
Ka=cos(alpha-theta)*sqrt(1+(sin(phi))^2-2*sin(phi)*sin(zi))/((cos(theta))^2*(cos(alpha)+sqrt((sin(phi))^2+((sin(alpha))^2))));
Pa=1/2*Gamma*H^2*Ka;
disp(Pa,"rankine earth pressure in lb/ft");
disp("there is slight error in answer due to rounding off error")
Beta=atan(sin(phi)*sin(zi)/(1-sin(phi)*cos(zi)));
disp(Beta*180/pi,"angle in degrees");

