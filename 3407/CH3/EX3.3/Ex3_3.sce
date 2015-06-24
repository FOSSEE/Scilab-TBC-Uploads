clear;
clc;
funcprot(0);

//given data
alpha1 = 58;//in deg
alpha2 = 44;//in deg
AVR = 1.0;

//Calculations
alpham = (180/%pi)*atan(0.5*(tan(alpha1*%pi/180) + tan(alpha2*%pi/180)));
zetam = (180/%pi)*atan(tan(alpham*%pi/180) - 0.213);
Cpi = 1-(cos(alpha1*%pi/180)/cos(alpha2*%pi/180))^2;
s_l = 9*(0.567-Cpi);
theta = ((zetam-alpha2+1.1*(s_l)^(1/3))/(0.5-0.31*(s_l)^(1/3)));
delta = alpha2-zetam-0.5*theta;

//Results
printf('The suitable space–chord ratio = %.4f',s_l);
printf('\n The suitable blade camber = %.2f deg.',theta);
