
clc; funcprot(0);
// Initialization of Variable
theta=25+14.0/60;//latitude in degrees
L1=29+15/60;//longitude in degrees
L2=45+25/60;//longitude in degrees
R=6370.0;//radius in km
//calculation
AB=cos(theta*%pi/180)*(L2-L1);//arc length in km
dis=2*%pi*R*AB/360.0;//distance in km
disp(dis,"distance of AB in m")
clear()
