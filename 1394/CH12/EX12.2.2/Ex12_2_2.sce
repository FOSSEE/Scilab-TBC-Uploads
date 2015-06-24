
clc
//Initialization of variables
x1=0.99
x2=0.99
y1=0.95
y2=0.95
alpha=1.5
m=0.42
l=2
HTU=0.34
//calculations
y1s= (y1-0.58)/m
xrd= (x2-y2)/(x1-y1s)
Rd=xrd/(1-xrd)
Rds=alpha*Rd
xl= ((Rds+1)*y1 - x1)/(Rds)
function z= ystar(y)
    z=0.58+0.42*y
endfunction
NTU = log((ystar(xl) -y1)/(ystar(x1)-x1)) /(1- m*(Rds+1)/Rds)
NTU2=l/HTU
xd2=(ystar(y1)-y1)/%e^(NTU2*(1-m))
xd=(0.58-xd2)/(1-m)
//results
printf("In case 1, NTU = %.2f",NTU)
printf("\n In case 2, xd = %.3f",xd)
