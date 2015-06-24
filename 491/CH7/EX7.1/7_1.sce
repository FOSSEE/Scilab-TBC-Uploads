// Let x1, y1 be the transformed direction inclined at 45 deegree to the original
sx = 16000; // Direct stress in x-direction in psi
sy = 6000; // Direct stress in y-direction ""
txy = 4000; // Shear stress in y-direction ""
tyx = txy ; // Shear stress in x-direction ""
t = 45 ; // Inclination pf plane in degree 
sx1 = (sx+sy)/2 + ((sx-sy)*(cosd(2*t))/2) + txy*sind(2*t);   // Direct stress in x1-direction in psi
sy1 = (sx+sy)/2 - ((sx-sy)*(cosd(2*t))/2) - txy*sind(2*t);   // Direct stress in y1-direction in psi
tx1y1 =  - ((sx-sy)*(sind(2*t))/2) + txy*cosd(2*t)   // Shear stress in psi
disp("psi",sx1,"The direct stress on the element in x1-direction is")
disp("psi",sy1,"The direct stress on the element in y1-direction is")
disp("psi",tx1y1,"The shear stress on the element")



