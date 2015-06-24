clc;
// page no 758
// prob no 20.3
//Determination of lenght of geostationary satellite with angle of elavation=30 degree
r=64*10^5;//Radius of earth
h=36*10^6;//height of satellite
theta=30;//angle of elevation 
d=sqrt(((r+h)^2)-((r*cosd(theta))^2))-(r*sind(theta));
disp('km',d/1000,'The length of the path is');