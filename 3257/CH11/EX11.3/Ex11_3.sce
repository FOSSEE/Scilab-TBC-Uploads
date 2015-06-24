// Pressure decay in composition
clc
k = 0.6 // given constant 
mu = 0.4// given constant 
d = 10 // diameter in mm
px = 0 // pressure measure in N/mm^2
px_p0 = 0.5 // pressure ratio
printf("\n Example 11.3")
printf("\n\n Part A:")
if px==0 then  // no function deals with the calculation for an infinite number so if statement is used here
    printf("\n Value of X must approach infinity for pressure to decay to zero.") 
end

printf("\n Part B:")
X = - log(px_p0)/(4*k*mu/d)
printf("\n Value of X, required to get pressure to decay to %.1f is %.2f mm. ",px_p0,X)
