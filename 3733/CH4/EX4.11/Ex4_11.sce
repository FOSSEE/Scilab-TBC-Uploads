//Example 4_11
clc;funcprot(0);
//Given data
Q=70;// m^3/sec
H=15;// m
N=200;// r.p.m
N_s=340;// Specific speed
n_t=0.90;// The efficiency of the turbine
rho=1000;// Density in kg/m^3
g=9.81;// m/s^2
D=[143 151 158.5 165 172.5];// Diamter of runner in cm
kW=[66.7 74 82.5 87 92];// (Unit)
rpm=[53 51 48.5 45.4 42.5];// (Unit)

// Calculation
//(a)
printf('\n (a)The type of the runner is Kaplan as the specific speed is 340.');
//(b)
w=rho*g;
P_t=(w*Q*H*n_t)/(1000);// kW
P=((N_s*H^(5/4))/N)^2;// kW
T_n=P_t/P;// Number of turbine units required
printf('\n (b)Number of turbine units required=%0.0f ',T_n);
//(c)
P_u=P/(H^(3/2));//The unit Power in kW
N_u=N/(H^(1/2));//The unit speed in r.p.m.m^-1/2
// For unit power of 43.35 and unit speed of 51.7,the required diameter can be calculated by interploation from the given data
D=D(1)+(((rpm(1)-N_u)/(rpm(1)-rpm(2)))*((D(2)-D(1))));// The diameter of the runner in cm
printf('\n(c)The diameter of the runner=%0.2f cm',D);
// The answer provided in the textbook is wrong
