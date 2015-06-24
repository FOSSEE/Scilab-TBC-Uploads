clc,clear
printf('Example 4.2\n\n')

P=16*1000 //power supplied in watts
V=220 //supply voltage
e=0.9;k=0.57; //emissivity and radiant efficiency
rho=1.09*10^-12//resistivity in ohm-metre

l_by_d2 = %pi*V^2/(4*rho*P) //ratio of l and d^2                              (i)
T1=1170+273; T2=500+273; //temperatures of wire and charge
H=5.72*k*e*(T1^4-T2^4)/100^4 //heat dissipated from surface

//Surface area = %pi*d*l
//total heat dissipated = electric power input and squaring the equation
d2l2= ( P/(H*%pi) )^2 //d^2*l^2                                              (ii)
//multiplying expression (i) and expression (ii)
l =(1/100)*(d2l2*l_by_d2)^(1/3)
printf('Length of wire = %.0f metre',l)
d=1000*sqrt(d2l2)/l
//d=sqrt( l/l_by_d2 ) 
printf('\nDiameter of wire = %.2f mm',d)
