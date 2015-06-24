clear 
clc 
disp('Ex-4.2');
// w=wavelength; consider k=2*(pi/w); 
// differentiate k w.r.t w and replace del(k)/del(w) = 1 for equation.4.3
// which gives del(w)= w^2 /(2*pi*del(x)), hence 
w=20; delx=200; // delx=200cm and w=20cm
delw=(w^2)/(delx*2*%pi);
printf('Hence uncertainity in length is %1.2f cm',delw);