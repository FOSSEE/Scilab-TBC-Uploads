//All the quantities are in SI units
M_inf = 2; //freestream mach number
p_inf = 101000; //freestream static pressure
rho_inf = 1.23; //freestream density
T_inf = 288; //freestream temperature
R = 287; //gas constant of air
a = 5; //angle of wedge in degrees
p_upper = 131000; //pressure on upper surface
p_lower = p_upper; //pressure on lower surface is equal to upper surface
c = 2; //chord length of the wedge
c_tw = 431; //shear drag constant

//SOLVING BY FIRST METHOD
//According to equation 1.8, the drag is given by D = I1 + I2 + I3 + I4
//Where the integrals I1, I2, I3 and I4 are given as

I1 = (-p_upper*sind(-a)*c/cosd(a))+(-p_inf*sind(90)*c*tand(a)); //pressure drag on upper surface
I2 = (p_lower*sind(a)*c/cosd(a))+(p_inf*sind(-90)*c*tand(a));  //pressure drag on lower surface
I3 = c_tw*cosd(-a)/0.8*((c/cosd(a))^0.8);                  //skin friction drag on upper surface
I4 = c_tw*cosd(-a)/0.8*((c/cosd(a))^0.8);                  //skin friction drag on lower surface

D = I1 + I2 + I3 + I4; //Total Drag

a_inf = sqrt(1.4*R*T_inf); //freestream velocity of sound
v_inf = M_inf*a_inf; //freestream velocity
q_inf = 1/2*rho_inf*(v_inf^2); //freestream dynamic pressure
S = c*1; //reference area of the wedge

c_d1 = D/q_inf/S; //Drag Coefficient by first method

printf("\nRESULT\n-------\nThe Drag coefficient by first method is: %1.3f\n", c_d1)

//SOLVING BY SECOND METHOD
C_p_upper = (p_upper-p_inf)/q_inf; //pressure coefficient for upper surface
C_p_lower = (p_lower-p_inf)/q_inf; //pressure coefficient for lower surface

c_d2 = (1/c*2*((C_p_upper*tand(a))-(C_p_lower*tand(-a)))) + (2*c_tw/q_inf/cosd(a)*(2^0.8)/0.8/c);

printf("\nThe Drag coefficient by second method is: %1.3f\n\n", c_d2)