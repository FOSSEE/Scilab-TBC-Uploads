//Steady-State AC Analysis
//page no - 5.10
//example 5.11
disp("when mag-50 ang-0 source is acting alone :");
function [A] = p2z(R,Theta)
 if argn(2) <> 2 then
    error("incorrect number of arguments.");
 end
 if ~and(size(R) == size(Theta)) then
   error("arguments must be of the same dimension.");
 end
 A = R.*exp(%i*%pi*Theta/180.);
endfunction
A=p2z(50,0); //converting polar to rec
disp(A);
disp("when mag-4 ang-0 source is acting alone :");
Vab2=0;
disp("By Super-position theorem :")
disp("Vab=Vab1+Vab2");
Vab=A+Vab2;
printf("Vab = %.f", Vab);
function [r,th]=rect2pol(x,y)
//rectangle to polar coordinate conversion
//based on "Scilab from a Matlab User's Point of View", Eike Rietsch,
2002
  r=sqrt(x^2+y^2);
  th = atan(y,x)*180/%pi;
endfunction
[r,th]=rect2pol(50,0)    //converting back to polar form
disp(r);
disp(th);
disp("Vab= mag-50 ang-0 V")
