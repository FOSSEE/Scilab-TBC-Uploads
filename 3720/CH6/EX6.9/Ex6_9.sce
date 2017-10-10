//Example 6_9
clc;clear;
// Given values
rho=1;//The density of water in kg/L
n=300;//rpm
D=0.01;// Diameter of each jet in m
V_t=20;// L/s
V_n=V_t/4;// L/s
r=0.6;//m

// Calculation
A_j=(%pi*D^2)/4;//Area of jet in m^2
V_j=(V_n)/(A_j*1000);//Average jet exit velocity in m/s
w=(2*(%pi)*n)/60;// The angular momentum of the nozzle in rad/s
v_n=r*w;//The tangential velocities of the nozzle in m/s
v_r=V_j-v_n;//The average velocity of the water jet relative to the control volume in m/s
m_t=rho*V_t;// Mass flow rate in kg/s
T_shaft=r*m_t*v_r;// The torque transmitted through the shaft in Nm
W=(w*T_shaft)/1000;
printf("The electric power generated=%0.1f kW\n",W);
