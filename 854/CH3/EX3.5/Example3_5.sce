//clear//
//Caption: Program to verify the Divergence theorem for the field 'D' 
//Example3.5
//page 74
clc;
x = sym('x');
y = sym('y');
z = sym('z');
//Components of Electric Flux Density in cartesian coordinate system
Dx = 2*x*y;
Dy = x^2;
Dz = 0;
//Divergence of electric flux density 'D'
dDx = diff(Dx,x);
dDy = diff(Dy,y);
dDz =0;
divD = dDx+dDy+dDz
disp(divD,'Divergence of Electric Flux Density D in C/cubic.metre, divD =')
//Evaluate volume integral on divergence of 'D'
Vol_int_divD = integ(divD,x);
Vol_int_divD = limit(Vol_int_divD,x,1)-limit(Vol_int_divD,x,0);
Vol_int_divD = integ(Vol_int_divD,y);
Vol_int_divD = limit(Vol_int_divD,y,2)-limit(Vol_int_divD,y,0);
Vol_int_divD = integ(Vol_int_divD,z);
Vol_int_divD = limit(Vol_int_divD,z,3)-limit(Vol_int_divD,z,0);
disp(Vol_int_divD,'Volume Integral of divergence of D, in coulombs vol_int(divD)=')
//Evaluate surface integral on field D
Dx = limit(Dx,x,1);
sur_D = integ(Dx,y);
sur_D = limit(sur_D,y,2) - limit(sur_D,y,0);
sur_D = integ(sur_D,z);
sur_D = limit(sur_D,z,3) - limit(sur_D,z,0);
disp(sur_D,'Surface Integral of field D, in coulombs sur_int(D.ds)=')
if(sur_D==Vol_int_divD)
  disp('Divergence Theorem verified')
end
//Result
// Divergence of Electric Flux Density D in C/cubic.metre, divD =   
//  2*y   
//Volume Integral of divergence of D, in coulombs vol_int(divD)=   
// 12   
// Surface Integral of field D, in coulombs sur_int(D.ds)=   
// 12   
