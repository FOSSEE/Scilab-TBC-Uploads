clc
clear
//Initialization of variables
kp=74
//calculations
f=poly(0,"f")
vec=roots(f^2 *(100-6*f) - kp^2 *(1-f)^2 *(9-6*f))
fn=vec(3)
//results
printf("Fractional conversion = %.3f",fn)
