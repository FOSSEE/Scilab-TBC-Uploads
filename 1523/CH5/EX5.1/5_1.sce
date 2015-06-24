//Steady-State AC Analysis
//page no - 5.1
//example 5.1
// A = p2z(R,Theta) - Convert from polar to complex form.
//    R is a matrix containing the magnitudes
//    Theta is a matrix containing the phase angles (in degrees).
function [A] = p2z(R,Theta)
 if argn(2) <> 2 then
    error("incorrect number of arguments.");
 end
 if ~and(size(R) == size(Theta)) then
   error("arguments must be of the same dimension.");
 end
 A = R.*exp(%i*%pi*Theta/180.);
endfunction

A=p2z(100,45);//converting from polar to rectangular
disp(A);
disp("Applying KVL to Mesh 1 we get :");
disp("(3+j14)I1-j10I2=70.710678+j70.710678");//Equation 1
disp("Applying KVL to Mesh 2 we get :");
disp("I1=0")//equation 2
disp("putting equation 2 in equation 1:")//putting equation 2 in equation 1
disp("I2=(70.710678+j70.710678)/-j10");
I2=A/10*%i;
disp(I2);
function [r,th]=rect2pol(x,y)
//rectangle to polar coordinate conversion
//based on "Scilab from a Matlab User's Point of View", Eike Rietsch,
2002
  r=sqrt(x^2+y^2);
  th = atan(y,x)*180/%pi;
endfunction
[r,th]=rect2pol(- 7.0710678,7.0710678)//converting back to polar form
disp(r);
disp(th);
disp("I2= mag - 10 ang - 135 A");
