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
eps_ = 30;//in deg
eps_max = 37.5;//in deg
eps = 37.5;//in deg
delp0 = 0.032;//the profile total pressure loss coefficient

//Calculations
theta = beta1_ - beta2_;
deltaN = (0.229*theta*(s_c^0.5))/(1 - (theta*(s_c^0.5)/500));
beta2N = deltaN + beta2_;
i_ = beta2N + eps_ - beta1_;
i = 0.4*eps_ + i_;
beta1 = beta1_ + i;
beta2 = beta1 - eps;
alpha2 = beta1;
alpha1 = beta2;
phi = 1/(tan(alpha1*%pi/180) + tan(beta1*%pi/180));
psi = lamda*phi*(tan(alpha2*%pi/180) - tan(alpha1*%pi/180));

//Results
printf('(i)The nominal incidence = %.1f deg.',i_);
printf('\n (ii)The inlet flow angle, beta1 = alpha2 = %.1f deg\n   Outlet flow angle beta2 = alpha1 = %.1f deg.',beta1,beta2);
printf('\n (iii)The flow coefficient = %.3f\n   The stage loading factor = %.3f',phi,psi);
//there are small errors in the answers given in textbook
