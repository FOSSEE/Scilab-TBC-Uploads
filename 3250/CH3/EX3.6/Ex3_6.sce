clc 
// Given that
r = 150 // Radius of the circular disc of lead in mm
Ti = 50 // Initial thickness of the disc in mm
Tf = 25 // Reduced thickness of the disc in mm
mu = 0.25// Cofficient of friction between the job and the dies 
K = 4 // Avg shear yield stress of the lead in N/mm^2
// Sample Problem 6 on page no. 122
printf("\n # PROBLEM 3.6 # \n")
R = r*sqrt(2)
rs = (R - ((Tf/(2*mu)) * log(1/(mu*sqrt(3)))))
funcprot(0)
function p1 = f(x), p1 = (((sqrt(3))*K)*exp((2*mu/Tf)*(R-x)))*x,
endfunction
I = intg(rs,R,f)
funcprot(0)
function p2 = f(y), p2 = ((2*K/Tf)*(R-y) + ((K/mu)*(1+log(mu*sqrt(3)))))*y,
endfunction
I_ = intg(0,rs,f)
F = 2*%pi*(I+I_)
printf("\n The maximum forging force = %e N",F)

 
