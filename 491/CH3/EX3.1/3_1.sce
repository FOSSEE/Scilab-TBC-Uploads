d = 1.5; // diameter of bar in inch
L = 54 ; // Length of bar in inch
G = 11.5e06 ; // modulus of elasticity in psi 
// Part (a)
T = 250 ; // torque
t_max = (16*T*12)/(%pi*(d^3));  // maximum shear stress in bar
Ip = (%pi*(d^4))/32 ; // polar miment of inertia 
f = (T*12*L)/(G*Ip) ; // twist in radian
f_ = (f*180)/%pi ; // twist in degree
disp("psi",t_max,"Maximum shear stress in the bar is ")
disp("degree",f_,"Angle of twist is")
//Part (b)
t_allow = 6000 ; // allowable shear stress
T1 = (%pi*(d^3)*t_allow)/16;  //allowable permissible torque in lb-in
T1_ = T1*0.0831658 ; //allowable permissible torque in lb-ft
f_allow = (2.5*%pi)/180 ; // allowable twist in radian
T2 = (G*Ip*f_allow)/L;  // allowable stress via a another method
T2_ = T2*0.0831658; //allowable permissible torque in lb-ft
T_max = min(T1_,T2_); // minimum of the two
disp("lb-ft",T_max,"Maximum permissible torque in the bar is")