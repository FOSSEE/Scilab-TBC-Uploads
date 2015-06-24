
i=3//current in coil
x=5D-2//length of air gap
lambda=sqrt(i/(121*x^2))
//calculating field energy W_f
W_f=integrate("121*lambda^2*.05^2","lambda", 0, lambda)
mprintf("Field energy stored=%f watt-sec\n", W_f)
//calculating coenergy
W_f_dash=integrate("i^.5/(11*.05)","i",0, i)
mprintf("Co-energy=%f watt-sec\n", W_f_dash)
//calculating mechanical force on moving part-keeping lambda constant
function y=f(x)
    y=121*x^2*lambda^3/3
endfunction
F_f=-1*derivative(f,x)
mprintf("Mechanical force developed F_f=%d N-m", round(F_f))
