syms Ro Ra Rb Rc Rd

//shifting summing points to left of 1/Ra and 1/Rb and combining the summing points
a=((1/Ra)*Rc)/(1+(1/Ra)*Rc*1)
b=(Rd/Rb)/(1+(Rd/Rb))
//shift input summing points to the right and combine the three summing points
c=(1/Ro)/(1+(1/Ro)*(Ra*Rc/(Ra+Rc)))

d=c/(1-(b*Rb*c))
e=a-b
Y=e*d

disp(Y,"Io/Vi = ")