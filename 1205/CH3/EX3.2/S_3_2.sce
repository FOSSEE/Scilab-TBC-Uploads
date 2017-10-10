clc;
// Given data
F=800; // N , Force applied on bracket
theta=60;// degree, angle made by lever with +ve X axis
theta=theta*%pi/180;// Conversion of angle into radian
r_AB=[-0.2, 0.16];//m vector drawn from B to A resolved in rectangular component
F=[F*cos(theta), F*sin(theta)]//N , vector F resolved in rectangular component 
k=1;// Unit vector along Z axis 

// M_B=r_AB * F relation 3.7 from section 3.5
M_B=det([r_AB; F])*k;// N.m 
printf("The moment of force 800 N about B is %.2f N.m . -ve sign shows its acting clockwise\n",M_B);


