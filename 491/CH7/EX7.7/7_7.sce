ex = 340e-06; // Strain in x-direction
ey = 110e-06; // Strain in y-direction
txy = 180e-06 ; // shear strain
// Part (a)
t = 30 ; // Inclination of the element in degree
ex1 = (ex+ey)/2 + ((ex-ey)/2)*cosd(2*t) + (txy/2)*(sind(2*t)); // Strain in x1 direction (located at 30 degree)
tx1y1 = 2*( -((ex-ey)/2)*sind(2*t) + (txy/2)*(cosd(2*t)) ); // Shear starin
ey1 = ex+ey-ex1 ; // Strain in y1 direction (located at 30 degree)
disp(ex1," Strain in x1 direction (located at 30 degree) is")
disp(tx1y1,"shear strain is")
disp(ey1," Strain in y1 direction (located at 30 degree) is")
// Part (b)
e1 = (ex+ey)/2 + sqrt(((ex-ey)/2)^2 + (txy/2)^2); // Principle stress
e2 = (ex+ey)/2 - sqrt(((ex-ey)/2)^2 + (txy/2)^2); // Principle stress
tp1 = (0.5)*atand(txy/(ex-ey)); // Angle to principle stress direction
tp2 = 90 + tp1 ; // Angle to principle stress direction
e1 = (ex+ey)/2 + ((ex-ey)/2)*cosd(2*tp1) + (txy/2)*(sind(2*tp1)); // Principle stress via another method
e2 = (ex+ey)/2 + ((ex-ey)/2)*cosd(2*tp2) + (txy/2)*(sind(2*tp2)); // Principle stress via another method
disp("degree",tp1,"with angle",e1,"The Principle stress is ")
disp("degree",tp2,"with angle",e2,"The Principle stress is ")
// Part (c)
tmax = 2*sqrt(((ex-ey)/2)^2 + (txy/2)^2); // Maxmum shear strain
ts = tp1 + 45 ; // Orientation of element having maximum shear stress 
tx1y1_ =  2*( -((ex-ey)/2)*sind(2*ts) + (txy/2)*(cosd(2*ts)) );  // Shear starin assosiated with ts direction
disp("degree",ts,"with angle",tx1y1_,"The Maximum shear strain is ")
eavg = (e1+e2)/2 ; // Average atrain
disp(eavg,"The average strain is")
