// Exa 3.22
format('v',6);clc;clear;close;
// Given data
theta1 = 128;//first maximum deflection in mm
theta3 = 90;//second maximum deflection in mm
theta_f = 70;// in mm
i = 6.2;// in µA
// The current sensitivity 
Si = theta_f/i;// in mm/µA
disp(Si,"The current sensitivity in mm/µA is");
// The logarithmic decrement 
// Formula %e^(2*lambda)= (theta1-thetaf)/(theta3-thetaf)
lembda = log((theta1-theta_f)/(theta3-theta_f) )*(1/2);
disp(lembda,"The logarithmic decrement is");
// lembda = (%pi*sie)/(sqrt( 1-((sie)^2) ));
// ((lembda/%pi)^2) = ((sie)^2)/(sqrt( 1-((sie)^2) ));
sie = lembda/sqrt(lembda^2+%pi^2);// the relative damping
disp(sie,"The relative damping is");
