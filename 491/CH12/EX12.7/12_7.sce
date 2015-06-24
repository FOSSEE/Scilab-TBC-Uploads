Ix = 29.29e06; // Moment of inertia of crosssection about x-axis
Iy = 5.667e06; // Moment of inertia of crosssection about y-axis
Ixy = -9.336e06; // Moment of inertia of crosssection 
tp1 = (atand(-(2*Ixy)/(Ix-Iy)))/2 ; // Angle definig a Principle axix
tp2 = 90 + tp1  // "" 
disp("degree",tp1,"The Principle axis is inclined at an angle")
disp("degree",tp2,"Second angle of inclination of Principle axis is")
Ix1 = (Ix+Iy)/2 + ((Ix-Iy)/2)*cosd(tp1) - Ixy*sind(tp1) ; // Principle Moment of inertia corresponding to tp1
Ix2 = (Ix+Iy)/2 + ((Ix-Iy)/2)*cosd(tp2) - Ixy*sind(tp2) ; // Principle Moment of inertia corresponding to tp2
disp("mm^4",Ix1,"Principle Moment of inertia corresponding to tp1")
disp("mm^4",Ix2,"Principle Moment of inertia corresponding to tp2")