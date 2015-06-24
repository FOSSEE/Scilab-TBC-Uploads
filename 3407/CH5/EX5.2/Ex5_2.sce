clear;
clc;
funcprot(0);

//given data
R = 0.5;//stage reaction
s_c = 0.9;//space-chord ratio
beta1_ = 44.5;//in deg
beta2_ = -0.5;//in deg
h_c = 2.0;//height-chord ratio
lamda = 0.86;//work done factor
i = 0.4;//mean radius relative incidence
rho = 3.5;//density in kg/m^3
Um = 242;//in m/s
eps_max = 37.5;//in deg
eps = 37.5;//in deg
delp0 = 0.032;//the profile total pressure loss coefficient
//Calculations
theta = beta1_ - beta2_;
deltaN = (0.229*theta*(s_c^0.5))/(1 - (theta*(s_c^0.5)/500));
beta2N = deltaN + beta2_;
eps_ = 0.8*eps_max;
i_ = beta2N + eps_ - beta1_;
i = 0.4*eps_ + i_;
beta1 = beta1_ + i;
beta2 = beta1 - eps;
alpha2 = beta1;
alpha1 = beta2;
phi = 1/(tan(alpha1*%pi/180) + tan(beta1*%pi/180));
psi = lamda*phi*(tan(alpha2*%pi/180) - tan(alpha1*%pi/180));
betam = (180/%pi)*atan(0.5*(tan(beta1*%pi/180) + tan(beta2*%pi/180)));
CL = 2*s_c*cos(betam*%pi/180)*(tan(beta1*%pi/180) - tan(beta2*%pi/180));
CDp = s_c*(delp0)*((cos(betam*%pi/180))^3)/((cos(beta1*%pi/180))^2);
CDa = 0.02*s_c/h_c;
CDx = 0.018*CL^2;
CD = CDp + CDa + CDx;
eff_tt = 1 - (CD*phi^2)/(psi*s_c*((cos(betam*%pi/180))^3));
delp = eff_tt*psi*rho*Um^2;

//Results
printf('(i)The nominal deflection= %.1f deg.\n the nominal incidence = %.1f deg.',eps_,i_);
printf('\n (ii)The inlet flow angle, beta1 = alpha2 = %.1f deg\n outlet flow angle beta2 = alpha1 = %.1f deg.',beta1,beta2);
printf('\n (iii)The flow coefficient = %.3f\n The stage loading factor = %.3f',phi,psi);
printf('\n (iv) The rotor lift coefficient = %.2f.',CL);
printf('\n (v) The overall drag coefficient of each row = %.3f.',CD);
printf('\n (vi) The total-to-total stage efficiency = %.3f.\n The pressure rise across the stage = %d kPa',eff_tt,delp/1000);


//there are small errors in the answers given in textbook
