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
A=p2z(10,30);
disp(A);   //converting to rectangular form
M=[8-2*%i, -3, 0; -3, 8+5*%i, -5; 0, -5 7-2*%i];
N=[A, 0, 0]'
O=inv(M);
X=O*N;
disp(X);
function [r,th]=rect2pol(x,y)
//rectangle to polar coordinate conversion
//based on "Scilab from a Matlab User's Point of View", Eike Rietsch,
2002
  r=sqrt(x^2+y^2);
  th = atan(y,x)*180/%pi;
endfunction
[r,th]=rect2pol(1.3340761,- 0.5209699)//converting back to polar form

