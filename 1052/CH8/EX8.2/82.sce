clc;
//Example 8.2
//page no 77 fig 8.2
printf("Example 8.2 page no 77  fig 8.2 \n\n\n");
//fluid flow in a device
//fluid flow with in the control volume is steady
q1=8//flow rate at section 1,direction in
q2=6//flow rate at section 2, direction in
q3=14//flow rate at section 3,direction out
h1=250//enthalpy at section 1
h2=150//enthalpy at section 2
h3=200//enthalpy at section 3
rho=800//density of fluid
printf("\n flow rate q1=%f m^3/s\n flow rate q2=%f m^3/s\n flow rate q3=%f m^3/s\n enthalpy h1=%f j/kg\n enthalpy h2=%f j/kg\n enthalpy h3=%f j/kg\n density of fluid rho=%f kg/m^3",q1,q2,q3,h1,h2,h3,rho);
//applying total energy balance
hp=746//1 hp=746 kw
H=rho*(q1*h1+q2*h2-q3*h3)/hp
printf("\n enthalpy H=%f hp",H);
//for adiabatic steady operation, Q_dot=0
W_dot=H//W_dot is work 
printf("\n work W_dot=%f hp",W_dot);
//since work is positive ,the surroundings must be doing work on the system through some device


