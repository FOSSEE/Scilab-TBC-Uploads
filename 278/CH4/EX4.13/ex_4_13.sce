//find the internal diameter of the tyre and least temp upto which type must be heated
clc
//solution
//given
D=1200//mm//diameter of wheel
f=100//N/mm^2//stress
E=200*10^3//N/mm^2//young's modulus
a=6.5*10^-6//per degree celcius
//we know stress/strain=E
//100/x=E
x=100/E//
//x=(D-d)/d
//x=D/d-1
d=D/(x+1)//mm
//let t be least temp to which tyre must be heated
//pi*D=Pi*d(!+at)
t=(D-d)/(d*a)
printf("the internal diameter is, %f mm\n",d)
printf("the least temp is,%f degree celcius",t)