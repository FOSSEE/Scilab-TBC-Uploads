clc,clear
printf('Example 4.14\n\n')

P=15*1000 //power supplied
V=220 //supply voltage
k=0.6;e=0.9; //radiating efficiency and emissivity
rho = 1.016*10^-6 //specific resistance

l_by_d2 = %pi*V^2/(4*rho*P) //ratio of l and d^2                              (i)

T1=1000+273; T2=600+273; //temperatures of wire and charge
H=5.72*k*e*(T1^4-T2^4)/100^4 //heat dissipated from surface

//since heat dissipated = electrical power input;
dl2=(   P/(H*%pi)   )^2//product of d and l                                   (ii)

//multiplying expression(i) and expression (ii)
l=(l_by_d2*dl2)^(1/3) //length of wire
printf('Length of wire = %.2f m\n',l)
d= sqrt(dl2)/l //diameter of wire
printf('Diameter of wire = %.2f mm',1000*d)
