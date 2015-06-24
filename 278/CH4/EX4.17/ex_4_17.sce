//find increase in volume
clc
//solution
//given
l=2400//mm//length
A=900//mm^2//area
P=500000//N//load
m=1/0.25
E=0.2*10^6//N/mm^2//young's modulus
//let dV be change in volume
V=A*l//mm^3//volume of rod
st=P/(A*E)//strain
//dV/V=st*(1-(2/m))
dV=V*st*(1-(2/m))//mm^3
printf("the change in volume is approximately,%f mm^3",dV)