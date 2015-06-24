clc;
clear all;
e = 1e-2; // Restoring couple per unit twist in Newton meter
a = 6e-2; // Radius of cyinder in meter
a1 = 0.10 // Internel diameter of hollow cylinder in meters
a2 = sqrt(a^2 + a1^2); // Externel Diameter in meter
disp(a2);
c = (e * (a2^2 - a1^2))/(a^4);//Restoring couple per unit twist for hollow cylinder
disp('Nm',c,'Restoring couple per unit twist for hollow cylinder is ');
//There is slight variation in answer than book's answer..verified in calculator too
