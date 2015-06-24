clc,clear
printf('Example 4.10\n\n')

P=20*1000 //power supplied in watts
V=220 //supply voltage
e=0.9;k=0.6; //emissivity and radiant efficiency
rho=100*10^-6//specific resistance

l_by_d2 = %pi*V^2/(4*rho*P) //ratio of l and d^2                              (i)
T1=1170+273; T2=500+273; //temperatures of wire and charge
H=5.72*k*e*(T1^4-T2^4)/1000^4 //heat dissipated from surface

//Surface area = %pi*d*l
//total heat dissipated = electric power input and squaring the equation
d2l2= ( P/(H*%pi) )^2 //    d^2  * l^2                                        (ii)
//using expression (i) and expression (ii)
l =(d2l2*l_by_d2)^(1/3)
printf('Length of wire = %.1f metres',l/100)
d=sqrt( l/l_by_d2 ) 
printf('\nSize of wire = %.1f cm',d)
