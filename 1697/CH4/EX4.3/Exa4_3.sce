//Exa 4.3
clc;
clear;
close;
//given data :
disp("For a two elements arrayy the total field is given by : ");
disp("E=2*Eo*cos(psi/2)");
disp("(i) It is a case of braod side array : so, delta = 0");
disp("psi = Beta*d*cos(theta)+delta")
disp("d=3*lambda/2");
disp("Beta*d = (2*%pi/lambda)*(3*lambda/2) = 3*%pi")
disp("psi = 3*%pi*cos(theta)");
disp("psi/2 = (3*%pi/2)*cos(theta)");
disp("The maxima for broad side array occurs when theta = %pi/2");
disp("Ep = 2*Eo*cos(3*(%pi/2)*cos(%pi/2))");
disp("Ep = 2*Eo as cos(%pi/2) = 0 and cos(0)=1");
disp("At half power beamwidth the field becomes Ep/sqrt(2)");
disp("So, cos(3*(%pi/2)*cos(theta)) = 1/sqrt(2)");
disp("3*(%pi/2)*cos(theta)=%pi/4");
disp("cos(theta) = 1/6");
disp("theta = 80.5 degree")
theta = 80.5;//in degree
HPBW=2*(90-theta);//in degree
disp(HPBW,"HPBW in degree : ");
disp("(ii) Equal amplitude and different phase(540 degree) : (end fire array) ");
disp("In case of end fire array :  ");
disp("delta = -Beta*d");
disp("Beta*d = 540 degree = 3*%pi");
disp("psi = 3*%pi*cos(theta)-3*%pi = 3*%pi*(cos(theta)-1)");
disp("E_HPBW = 3*%pi*(cos(theta)-1) = %pi/4 = 1/sqrt(2)");
disp("3*%pi*(cos(theta)-1) = %pi/4");
disp("cos(theta) = 1+1/12 = 13/12");
disp("theta = 33.6 degree");
theta=33.6;//in degree
HPBW=2*theta;//in degree
disp(HPBW,"HPBW in degree : ");