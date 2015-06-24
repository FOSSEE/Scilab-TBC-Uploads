//chapter-14,Example14_7,pg 510

d1=4*10^-2//diameter of inner cylinder

d2=4.4*10^-2//diameter of outer cylinder

h=2.2//level of water

H=4//height of tank

eps1=((80.37*10^11)/((4*%pi*10^8)^2))//dielectric const. in free space(SI)

epsv=0.013*10^-5//dielectric const. of medium(SI)

C=(((H*epsv)+(h*(eps1-epsv)))/(2*log(d2/d1)))//capacitance of sensor

printf("capacitance of sensor\n")

printf("C=%.8f F",C)