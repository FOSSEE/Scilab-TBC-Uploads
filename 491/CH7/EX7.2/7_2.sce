// Let x1, y1 be the transformed direction inclined at 15 deegree to the original
sx = -46e06; // Direct stress in x-direction in Pa
sy = 12e06; // Direct stress in y-direction ""
txy = -19e06; // Shear stress in y-direction ""
t = -15 ; // Inclination of plane in degree 
sx1 = (sx+sy)/2 + ((sx-sy)*(cosd(2*t))/2) + txy*sind(2*t)   // Direct stress in x1-direction in Pa
sy1 = (sx+sy)/2 - ((sx-sy)*(cosd(2*t))/2) - txy*sind(2*t)   // Direct stress in y1-direction in Pa
tx1y1 =  - ((sx-sy)*(sind(2*t))/2) + txy*cosd(2*t)    // Shear stress in Pa
disp("Pa",sx1,"The direct stress on the element in x1-direction is")
disp("Pa",sy1,"The direct stress on the element in y1-direction is")
disp("Pa",tx1y1,"The shear stress on the element")

