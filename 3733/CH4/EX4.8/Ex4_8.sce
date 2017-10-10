//Example 4_8
clc;funcprot(0);
//Given data
Q=350;// m^3/sec
H=30;// m
n_t=0.88;//// The turbine efficiency
f=50;// The frequency of generation in cycles/sec
no_p=24;// Number of poles used
N_sf=300;// Specific speed
N_sk=800;// Specific speed

//Calculation
N=(120*f)/(no_p);// r.p.m
w=1000*9.81;
P_t=(w*Q*H*n_t)/(1000);// kW
P=((N_sf*H^(5/4))/N)^2;// kW
f_n=(P_t/P);// Number of francis turbine required
P=((N_sk*H^(5/4))/N)^2;// kW
k_n=(P_t/P);// Number of kaplan turbine required
printf('\n Number of francis turbines=%0.0f \n Number of kaplan turbine used=%0.0f',f_n,k_n);
// The answer vary due to round off error
