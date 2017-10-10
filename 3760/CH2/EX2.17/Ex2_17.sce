clc;
i=sqrt(2)*1000; // maximum current carried by conductors
z=2; // number of conductors in slot
l=1; // embedded length
w=0.05; // slot width
uo=4*%pi*10^-7; // free space permeability
// after derived expression
fe=(uo*z^2*l*i^2)/(2*w);
printf('Magnitude of magnetic force is %f N and its direction is towards the bottom of the slot\n',fe/2); 
