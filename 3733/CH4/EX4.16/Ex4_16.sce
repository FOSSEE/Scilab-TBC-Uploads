//Example 4_16
clc;funcprot(0);
//Given data
P=5400;// kW
N=200;// r.p.m
D=3;// m
H=240;// m
n_t=0.82;
rho=1000;// kg/m^3
g=9.81;// m/s^2

//Calculation
//(a)
Q=(P*1000)/(rho*g*H*n_t);// m^3/sec
N_u=(N*D/sqrt(H));// Unit speed
P_u=(P/(D^2*H^(3/2)));// Unit power
Q_u=(Q/(D^2*(sqrt(H))));// Unit flow
N_s=(2*%pi*N*sqrt(Q)*sqrt(n_t))/(60*(g*H)^(3/4));// Specific speed
printf('\n(a)The flow rate,Q=%0.1f m^3/sec \n   The unit speed,N_u=%0.1f \n   The unit power,P_u=%0.3f \n   The unit flow,Q_u=%0.2f \n   The specific speed,N_s=%0.3f',Q,N_u,P_u,Q_u,N_s);
//(b)
// When the head is changed to 160 m,the diameter remains same.
H=160;// m
N=(N_u*sqrt(H))/D;// rpm
P_1=(P_u*D^2*H^(3/2));// kW
Q=(Q_u*D^2*sqrt(H));// m^3/sec
printf('\n(b)Speed,N=%0.0f r.p.m\n   Power,P=%0.0f kW\n   The flow rate,Q=%0.2f m^3/sec ',N,P_1,Q);
//(c)
H=183;// m
P=2850;// kW
D_1=sqrt((P/(P_u*H^(3/2))));// m
N_1=(N_u*sqrt(H))/(D_1);// r.p.m
Q=Q_u*D_1^2*sqrt(H);// m^3/sec
printf('\n(c)Diameter,D_1=%0.2f m\n   Speed,N=%0.0f r.p.m\n   The flow rate,Q=%0.2f m^3/sec ',D_1,N_1,Q);
// The answer vary due to round off error
