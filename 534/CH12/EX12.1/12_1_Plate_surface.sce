clear;
clc;
printf('FUNDAMENTALS OF HEAT AND MASS TRANSFER \n Incropera / Dewitt / Bergman / Lavine \n EXAMPLE 12.1   Page 731 \n')// Example 12.1

// a) Intensity of emission in each of the three directions
// b) Solid angles subtended by the three surfaces
// c) Rate at which radiation is intercepted by the three surfaces

A1 = .001		;//[m^2] Area of emitter
In  = 7000		;//[W/m^2.Sr] Intensity of radiation in normal direction
A2 = .001		;//[m^2] Area of other intercepting plates
A3 = A2			;//[m^2] Area of other intercepting plates
A4 = A2			;//[m^2] Area of other intercepting plates
r = .5			;//[m] Distance of each plate from emitter
theta1 = 60		;//[deg] Angle between surface 1 normal & direction of radiation to surface 2
theta2 = 30		;//[deg] Angle between surface 2 normal & direction of radiation to surface 1
theta3 = 45		;//[deg] Angle between surface 1 normal & direction of radiation to surface 4

//From equation 12.2
w31 = A3/r^2;
w41 = w31;
w21 = A2*cos(theta2*0.0174532925)/r^2;


//From equation 12.6
q12 = In*A1*cos(theta1*0.0174532925)*w21;
q13 = In*A1*cos(0)*w31;
q14 = In*A1*cos(theta3*0.0174532925)*w41;

printf("\n (a) As Intensity of emitted radiation is independent of direction, for each of the three directions I = %i W/m^2.sr \n\n (b) By the Three Surfaces\n         Solid angles subtended                Rate at which radiation is intercepted \n           w4-1 = %.2e sr                           q1-4 = %.1e W \n           w3-1 = %.2e sr                           q1-3 = %.1e W\n           w2-1 = %.2e sr                           q1-2 = %.1e W    ",In,w41,q14,w31,q13,w21,q12);
//END



