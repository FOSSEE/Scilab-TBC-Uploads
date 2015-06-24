clc
// initialization of variables
clear
// part (a)
ab_r=100
Sigma_1=-20 //MPa
Sigma_2=-75 //MPa
alphao=0.01 //rad
//calculations
A=(Sigma_1+Sigma_2)/(Sigma_1-Sigma_2)
th=1/2*acos((A*sinh(2*alphao)-1/2*(sinh(2*alphao)+cosh(2*alphao)))/A)
printf('pat (a)')
printf('\n theta = %.4f rad',th)
//part (b)
S_bb=-(Sigma_1-Sigma_2)^2/(2*(Sigma_1+Sigma_2))*(1+cosh(2*alphao)/sinh(2*alphao))
printf('\n part (b)')
printf('\n Maximum tensile stress = %d MPa',S_bb)
//part (c)
Beta=exp(2*alphao)*cosh(2*alphao)-2*A^2*(sinh(2*alphao))^2
Beta=1/2*acos(Beta/(exp(2*alphao)))
printf('\n part (c)')
printf('\n Beta = %.4f rad',Beta)
