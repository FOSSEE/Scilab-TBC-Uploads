clc
//initialisation of variables
d= 4 //ft
T= 5000 //psi
angle= 0.1 //degrees
//CALCULATIONS
T1= (%pi*d^3)*T/16
T2=angle*%pi*G*%pi*d^4/(180*12*32)
//RESULTS
if (T1<T2) 
    printf ('Safe torque= %.2f lb in',T1)
else
    printf ('Safe torque= %.2f lb',T2)
end
