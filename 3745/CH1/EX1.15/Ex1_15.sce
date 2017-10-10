// Ex 15 Page 356

clc;clear;close;
// Given
C=5*10**-6;//F
L=2;//H
R=200;//ohm

if R<2*sqrt(L/C) then
    printf("Since R<2sqrt(L/C), the circuit is originally oscillatory.")
end

a=R/2/L
omega = sqrt(1/L/C-R^2/4/L^2);//rad/s
//i=Im*%e**(-a*t)*sin(omega*t+fi)
//at t=0 sec
i0=0;//A
vc=10;//V
fi=asin(i0);//degree
//L*di/dt=vc at t=0
Im=poly([0],'Im')
function i=current(t)
    i=Im*expm(-a*t)*sin(omega*t+fi)
endfunction
//i=Im*expm(-a*t)*sin(omega*t+fi)
LdiBYdt=L*numderivative(current,0)
temp = coeff(LdiBYdt)
Im=vc/temp(2)
printf("\n Expression for current :\n  i = %.3f*exp(-%dt)*sin(%.1ft)",Im,a,omega)
Rn=2*sqrt(L/C);//ohm
Rad=Rn-R;//ohm
printf("\n\n Additional resistance required = %d ohm",Rad)
