
clc; funcprot(0);
// Initialization of Variable
AB=610;// ground length in m
Xa=18.35;//in mm
Xb=106.41;//in mm
Ya=-62.41;//in mm
Yb=-21.43;//in mm
Ha=435;//elevation in m
Hb=452;//elevation in m
f=0.1524*1000;//focal length in m
//calculation
//solving the quadratic polynomial in H
//a=(Xb(H-Hb)-Xa(H-Ha))/f
//b=(Yb(H-Hb)-Ya(H-Ha))/f
//AB=sqrt(a^2+b^2)
//0=0.4064-365.929H-289685.07
//H=poly([-289685.926 -365.929 0.4064],'x','coeff')
//h=roots(H)
//disp(h(1),"height required in m")
function [f]=equation(x)
    f=610^2-((Xb/f*(x-Hb)-Xa/f*(x-Ha))^2+(Yb/f*(x-Hb)-Ya/f*(x-Ha))^2)
endfunction
//initial guess
x=1407;
//deff('y=f(x)','y=f');
y=fsolve(x,equation);
disp(round(y),"height required in m")
clear()
