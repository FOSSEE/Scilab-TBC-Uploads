clc;
A=1; // area of plates
E=3*10^6; // electric field intensity between plates
Eo=(10^-9/(36*%pi)); // vaccum permittivity
// after using both energy and coenergy method expression for force is derived
f=(E^2*Eo*A)/2;
printf('Force between two plates is %f N',f);

