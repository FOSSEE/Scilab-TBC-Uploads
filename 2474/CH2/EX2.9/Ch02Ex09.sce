// Scilab code Ex2.9: Pg.86 (2008)
clc; clear;
E = 4.5e+17;    // Energy of an object, J
c = 3e+08;    // Velocity of light ,m/s
p_x = 3.8e+08;    // X-component of Momentum of object, kg-m/s
p_y = 3.0e+08;    // Y-component of Momentum of object, kg-m/s
p_z = 3.0e+08;    // Z-component of Momentum of object, kg-m/s
p = (p_x*c)^2+(p_y*c)^2+(p_z*c)^2;     // Total momentum of object; kg-m/s
m = sqrt((E^2)-(p))/(c^2);    // Rest mass of moving object, kg
printf("\nThe rest mass of the object = %3.1f kg",m);

// Result
// The rest mass of the object = 4.6 kg 