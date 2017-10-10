//Example 4_6
clc;funcprot(0);
//Given data
Q=260;//m^3/s
H=1.7;//m
n_p=0.825;
N_s=890;// r.p.m
N=50;//r.p.m

//Calculation
w=1000*9.81;// N
P_t=(Q*w*H*n_p)/(1000);// Total power to be developed in kW
P=((N_s*H^(5/4))/N)^2;// kW
n_k=P_t/P;// Number of kaplan turbine required
printf('Number of Kaplan turbine required=%0.0f\n',n_k);
// The answer vary due to round off error
