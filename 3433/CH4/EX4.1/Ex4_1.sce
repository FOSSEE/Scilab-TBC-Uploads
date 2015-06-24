clear;
clc;
funcprot(0);

//given data
n = 5;//number of stages
T01 = 1200;//Turbine inlet stagnation temperature in K
p01 = 213;//inlet stagnation pressure in kPa
mdot = 15;//mass flow rate in kg/s
P = 6.64;//Mechanical power in MW
alpha1 = 15;//in deg
alpha2 = 70;//in deg
rm = 0.46;//turbine mean radius in m
N = 5600;//rotational speed in rpm
gamma = 1.333;
R = 287.2;//in J/(kg.K)
Cp = 1150;// in J/(kg.K)

//Calculations
U = rm*N*2*%pi/60;
psi = P*(10^6)/(mdot*n)/(U^2);
phi = psi/(tan(alpha1*%pi/180) + tan(alpha2*%pi/180));
R = 1-0.5*psi+phi*tan(alpha1*%pi/180);

k1 = phi*U/sqrt(Cp*T01);
k2 = 0.3663;

//iteration to find out Mach number
i = 1;
M = 0.0;//initial guess of Mach number
while (i>0), i = i+1
    res = M*(sqrt(gamma-1))*(1 + 0.5*(gamma-1)*(M^2))^(-0.5)- k1;
    if res > 0 then
        M = M - 0.0001;
    elseif res < 0
        M = M + 0.0001;    
    end
    if abs(res)<0.000001 then
        break;
    end
end
Ax = mdot*sqrt(Cp*T01)/(k2*p01*1000);
H = Ax/(2*%pi*rm);
HTR = (rm-0.5*H)/(rm+0.5*H);

//Results
printf('(a) The turbine stage loading coefficient = %.3f',psi);
printf('\n  The flow coefficient = %.3f',phi);
printf('\n  The reaction = %.1f',R);
printf('\n (b) The annulus area at inlet to the turbine = %.3f m^2',Ax);
printf('\n  The blade height = %.4f',H);
printf('\n  The hub-to-tip ratio, HTR = %.3f',HTR);
