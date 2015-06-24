clear;
clc;
funcprot(0);

//given data
s_l = 1.0;
alpha1_ = 50;//in deg
alpha2_ = 20;//in deg
eps_ = 21;//in deg
i_ = -0.4;//in deg
i = 3.8;//in deg
CD = 0.017;
eps = 1.15*eps_;

//Calculations
alpha1 = alpha1_+i;
alpha2 = alpha1-eps;
alpham = (180/%pi)*atan(0.5*(tan(alpha1*%pi/180) + tan(alpha2*%pi/180)));
zeta = CD/((s_l)*(cos(alpham*%pi/180))^3);
Cf = 2*(tan(alpha1*%pi/180) - tan(alpha2*%pi/180));
eff_D = 1 - zeta/(Cf*tan(alpham*%pi/180));

//Results
printf('The tangential lift force coefficient = %.3f',Cf);
printf('\n The diffuser efficiency = %d percentage.',eff_D*100);
