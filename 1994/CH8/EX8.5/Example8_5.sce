//Chapter-8,Example8_5,pg 8_35
Z2=250
Z3=200
Z1=50
Z4=Z2*Z3/Z1//magnitude condition
theta1=80
theta2=0
theta3=30
theta4=theta2+theta3-theta1//angle condition
theta4=theta4*%pi/180//in radians
Rx=Z4*cos(theta4)//real part
Ry=Z4*sin(theta4)//imag. part
Z4=Rx+%i*Ry
printf("unknown impedance\n")
disp(Z4)
