clc
// initialization of variables
clear
// Equation given: E_l =E_p + E_e
// E_p = 0.58*(2N)^-0.57
// E_e=0.0062*(2N)^-0.09
// Part (a)
function [f]=func(N)
    f = 0.58*(2*N)^(-0.57)+0.0062*(2*N)^(-0.09)-0.01;
endfunction

Nc=6390
N=Nc
E_p = 0.58*(2*N)^-0.57
E_e = 0.0062*(2*N)^-0.09
E_l=E_p+E_e
printf('Part (a)')
printf('\n Total strain = %.5f ',E_l)
//part (b)
N=1/2*10^6
E_p = 0.58*(2*N)^-0.57
E_e = 0.0062*(2*N)^-0.09
E_l=E_p+E_e
printf('\n Part (b)')
printf('\n Total strain = %.5f ',E_l)
// part (c)
E_l=0.01
// In order to solve for N We have to solve a non-linear equation

N = 1;//initial guess
f = 1;//initial guess
while(abs(f)>0.000001),
    f = func(N);    
    if f>0 then
        N = N+1;
    elseif f<0 then
        N = N-1;
    end
end
printf('\n N = %d cycles.',N);
