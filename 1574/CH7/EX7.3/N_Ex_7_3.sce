clc
//Chapter7
//Example7.3, page no 279
//Given
mue=25
rp=5e3
Rs=1e3//input resistance
//Coupling Capacitors are assumed as short circuit
Rg=1e5
gm=25/5e3
Req=2.5/gm
F=1+((((Req*(Rs+Rg)^2)+(Rg*Rs^2))/(Rs*Rg^2)))
xo=0
x1=1e10
w=0:%inf

vo=sqrt((30145e-8/%pi)*integrate('1/(((3e5)^2)+(w^2))','w',xo,x1))
mprintf('The mean square noise voltage is: %f uV',vo*1e6)

