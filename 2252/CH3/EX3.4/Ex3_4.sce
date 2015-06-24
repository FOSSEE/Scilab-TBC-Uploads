

mu_not=4D-7*%pi
I1=30//current in wire A
I2=30//current in wire B
R=10D-2//distance b/w 2 wires
F=mu_not*I1*I2/(2*%pi*R)
mprintf("Force per metre length is %d*10^-4 N/m in both cases (i)and (ii). However in case(i), it is attractive and in case(ii), it is repulsive", F*10^4)
