//Exa 6.3
clc;
clear;
close;
//given :
f=30 //frequency in MHz
f=30*10^6 //frequency in Hz
c=3*10^8 //speed of light in m/s
lambda=c/f //wavelength in meter

disp("for Delta=10 degrees")

Delta1=10 // angle of elevation in Degrees
H1=lambda/(4*sind(Delta1)) // Rhombic height in m
phi1=90-Delta1 // tilt angle in Degrees
l1=lambda/(2*(cosd(phi1)^2)) // wire length in m
disp(H1," Rhombic height in m:")
disp(phi1,"Tilt angle in Degrees:")
disp(l1,"length of wire in meter:")

disp("for Delta=15 degrees")

Delta2=15 // angle of elevation in Degrees
H2=lambda/(4*sind(Delta2)) // Rhombic height in m
phi2=90-Delta2 // tilt angle in Degrees
l2=lambda/(2*(cosd(phi2)^2)) // wire length in m
disp(H2," Rhombic height in m:")
disp(phi2,"Tilt angle in Degrees:")
disp(l2,"length of wire in meter:")

disp("for Delta=20 degrees")

Delta3=20 // angle of elevation in Degrees
H3=lambda/(4*sind(Delta3)) // Rhombic height in m
phi3=90-Delta3 // tilt angle in Degrees
l3=lambda/(2*(cosd(phi3)^2)) // wire length in m
disp(H3," Rhombic height in m:")
disp(phi3,"Tilt angle in Degrees:")
disp(l3,"length of wire in meter:")

disp("for Delta=25 degrees")

Delta4=25 // angle of elevation in Degrees
H4=lambda/(4*sind(Delta4)) // Rhombic height in m
phi4=90-Delta4 // tilt angle in Degrees
l4=lambda/(2*(cosd(phi4)^2)) // wire length in m
disp(H4," Rhombic height in m:")
disp(phi4,"Tilt angle in Degrees:")
disp(l4,"length of wire in meter:")

disp("for Delta=30 degrees")

Delta5=30 // angle of elevation in Degrees
H5=lambda/(4*sind(Delta5)) // Rhombic height in m
phi5=90-Delta5 // tilt angle in Degrees
l5=lambda/(2*(cosd(phi5)^2)) // wire length in m
disp(H5," Rhombic height in m:")
disp(phi5,"Tilt angle in Degrees:")
disp(l5,"length of wire in meter:")

disp("for Delta=35 degrees")

Delta6=35 // angle of elevation in Degrees
H6=lambda/(4*sind(Delta6)) // Rhombic height in m
phi6=90-Delta6 // tilt angle in Degrees
l6=lambda/(2*(cosd(phi6)^2)) // wire length in m
disp(H6," Rhombic height in m:")
disp(phi6,"Tilt angle in Degrees:")
disp(l6,"length of wire in meter:")

disp("for Delta=40 degrees")

Delta7=40 // angle of elevation in Degrees
H7=lambda/(4*sind(Delta7)) // Rhombic height in m
phi7=90-Delta7 // tilt angle in Degrees
l7=lambda/(2*(cosd(phi7)^2)) // wire length in m
disp(H7," Rhombic height in m:")
disp(phi7,"Tilt angle in Degrees:")
disp(l7,"length of wire in meter:")
