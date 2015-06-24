d = 0.03 ; // diameter of the shaft in meter
T2 = 450 ; // Torque in N-m
T1 = 275 ; //
T3 = 175 ; //
Lbc = 0.5 ; // Length of shaft in meter
Lcd = 0.4 ; // Length of shaft in meter
G = 80e09 ; // Modulus of elasticity
Tcd = T2-T1 ; // torque in segment CD
Tbc = -T1 ; // torque in segment BC
tcd = (16*Tcd)/(%pi*(d^3)); // shear stress in cd segment
disp("Pa",tcd,"Shear stress in segment cd is")
tbc = (16*Tbc)/(%pi*(d^3)); // shear stress in bc segment
disp("Pa",tbc,"Shear stress in segment bc is")
Ip = (%pi/32)*(d^4); // Polar monent of inertia
fbc = (Tbc*Lbc)/(G*Ip); // angle of twist in radian
fcd = (Tcd*Lcd)/(G*Ip); // angle of twist in radian
fbd = fbc + fcd ; // angle of twist in radian
disp("radian",fbd,"Angles of twist in section BD")
