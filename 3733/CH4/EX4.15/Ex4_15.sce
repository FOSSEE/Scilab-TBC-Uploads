//Example 4_15
clc;funcprot(0);
//Given data
N_1=200;// r.p.m
H_1=25;// m
Q=9;// m^3/sec
n_t=0.90;// The turbine efficiency
g=9.81;// m/s^2
rho=1000;// kg/m^3

// Calculation
//(a)
N_s=(2*%pi*N_1*sqrt(Q))*(sqrt(n_t))/(60*(g*H_1)^(3/4));
//(b)
P_1=(rho*g*H_1*Q*n_t)/(1000);// kW
//(c)
H_2=15;// m
N_2=N_1*sqrt(H_2/H_1);// r.p.m
P_2=P_1*(H_2/H_1)^(3/2);// kW
printf('\n(a)The specific speed,N_s=%0.3f \n(b)Power generated,P=%0.1f kW \n(c)Speed and Power if the head is reduced to 15m,N_2=%0.1f rpm & P_2=%0.0f kW',N_s,P_1,N_2,P_2);
printf('\nFrom the range of specific speed it is seen that the turbine to be selected is Francis type');
