clc;
// Given data
P=40; // N , Force applied to shift lever 
alpha=25;// degree, angle made by force P with -ve X axis
alpha=alpha*%pi/180;// Conversion of angle into radian
x=0.2;//m , Hirizontal distance of A from B
y=0.6;//m, Vertical distance of A from B


Px=P*cos(theta);// N , horizontal component
Py=P*sin(theta);//N , Vertical component

M_B=-x*Px-y*Py//N.m , here negative signs are taken as each component creates moment clockwise
printf("The moment of force P about B is %.2f N.m . -ve sign shows its acting clockwise\n",M_B);


