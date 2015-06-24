clear;
clc;
printf("\t\t\tExample Number 2.6\n\n\n");
// heat source with convection  
// illustration2.6
// solution

// all the power generated in the wire must be dissipated by convection to the liquid 
// P = i^(2)*R = q = h*A*dt
L = 100;// [cm] length of the wire  
k = 19;// [W/m per degree celsius] heat transfer coefficient of steel wire
A = %pi*(0.15)^(2);// [square meter] crossectional area of wire
rho = 70*10^(-6);// [micro ohm cm] resistivity of steel 
R = rho*L/A;// [ohm] resistance of wire
i = 200;// [ampere] current in the wire
P = i^(2)*R;// [W] power generated in the wire
Tl = 110;// [degree celsius] liquid temperature
d = 0.003;// [m] diameter of wire
l = 1;// [m] length of wire
Tw = (P/(4000*3.14*d*l))+110;// [degree celsius] wire temperature
// heat generated per unit volume q_dot is calculated as
// P = q_dot*V = q_dot*3.14*r^(2)*l
r = d/2;// [m] radius of wire
q_dot = P/(%pi*r^(2)*l);// [W/m^(3)]
// finally the center temperature of the wire is calculated from equation (2-26)
To = ((q_dot*(r^(2)))/(4*k))+Tw;// [degree celsius]
printf("center temperature of the wire is %f degree celsius",To);






