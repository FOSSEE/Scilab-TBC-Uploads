clear;
clc;
funcprot(0);

//given data
dt = 1.0;//tip diameter in m
dh = 0.9;//hub diameter in m
alpha1 = 30;//in deg
beta1 = 60;//in deg
alpha2 = 60;//in deg
beta2 = 30;//in deg
N = 6000;//rotational speed in rev/min
rhog = 1.5;//gas density in kg/m^3
Rt = 0.5;//degree of reaction at the tip

//Calculations
omega = 2*%pi*N/60;
Ut = omega*0.5*dt;
Uh = omega*0.5*dh;
cx = Ut/(tan(alpha1*%pi/180) + tan(beta1*%pi/180));
mdot = %pi*((0.5*dt)^2 - (0.5*dh)^2)*rhog*cx;
Wcdot = mdot*Ut*cx*(tan(alpha2*%pi/180)- tan(alpha1*%pi/180));
ctheta1t = cx*tan(alpha1*%pi/180);
ctheta1h = ctheta1t*(dt/dh);
ctheta2t = cx*tan(alpha2*%pi/180);
ctheta2h = ctheta2t*(dt/dh);
alpha1_ = (180/%pi)*atan(ctheta1h/cx);
beta1_ = (180/%pi)*atan((Uh/cx) - tan(alpha1_*%pi/180));
alpha2_ = (180/%pi)*atan(ctheta2h/cx);
beta2_ = (180/%pi)*atan((Uh/cx) - tan(alpha2_*%pi/180));
k = Rt*(0.5*dt)^2;
Rh = 1 - (k/(0.5*dh)^2);

//Results
printf('(i)The axial velocity, cx = %d m/s',cx);
printf('\n (ii)The mass flow rate = %.1f kg/s',mdot);
printf('\n (iii)The power absorbed by the stage = %.1f MW',Wcdot/(10^6));
printf('\n (iv)The flow angles at the hub are:\n alpha1 = %.2f deg,\n beta1 = %.2f deg,\n alpha2 = %.1f deg, and\n beta2 = %.2f deg.',alpha1_,beta1_,alpha2_,beta2_);
printf('\n (v)The reaction ratio of the stage at the hub, R = %.3f.',Rh);


//there are small errors in the answers given in textbook
