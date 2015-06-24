P = 90000; //newton
A = 1200e-6 // meter^2
s_x = -P/A ; //stress
t_1 = 25; //for the stresses on ab and cd plane
s_1 = s_x*(cosd(t_1)^2);
T_1 = -s_x*cosd(t_1)*sind(t_1) ;
t_2 = -65; //for the stresses on ad and bc plane
s_2 = s_x*(cosd(t_2)^2);
T_2 = -s_x*cosd(t_2)*sind(t_2) ;
disp("MPa respecively",s_1,T_1," The normal and shear stresses on the plane ab and cd are")
disp("MPa respecively",s_2,T_2," The normal and shear stresses on the plane ad and bc are")
