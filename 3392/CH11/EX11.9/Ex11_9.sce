clc
// initialization of variables
clear
a=100 //mm
b=300 //mm
v=0.29
a=a*10^-3
b=b*10^-3
printf('r     S_rr|R/Y     S_th|R/Y     (S_th/R-S_rr/R)/Y')
for i=1:21
    r=0.09+0.01*i
S_rrR=((r-a)/r - 3/(b^2+a*b+a^2)*((r^3-a^3)/(3*r) + (3+v)/8*(a^2+b^2-r^2-a^2*b^2/r^2)))
S_thR=(1- 3/(8*(b^2+a*b+a^2)) * ((3+v)*(a^2+b^2+a^2*b^2/r^2) - (1+3*v)*r^2)) 
printf('\n %.2f     %.5f     %.5f     %.5f',r,S_rrR,S_thR,S_rrR-S_thR)
end
