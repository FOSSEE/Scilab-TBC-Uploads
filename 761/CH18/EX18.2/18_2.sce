clc;
// page no 678
// prob no 18_2
//A line of sight radio link at freq 6GHz with seperation 40 km betn antennas
f=6;d1=10;d2=30;//obstacle located at 10 km
//Determination of dist R to clear obstacle 
R=10.4*sqrt((d1*d2)/(f*(d1+d2)));
disp('m',R,'The dist by which beam must clear the obstacle is')