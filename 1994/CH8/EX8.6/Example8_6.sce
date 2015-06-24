//Chapter-8,Example8_6,pg 8_35
Z1=sqrt(((50*cos(40*%pi/180))^2)+(50*sin(40*%pi/180))^2)//angle in radians
Z2=sqrt(((100*cos(-90*%pi/180))^2)+(100*sin(-90*%pi/180))^2)
Z3=sqrt(((15*cos(45*%pi/180))^2)+(15*sin(45*%pi/180))^2)
Z4=sqrt(((30*cos(30*%pi/180))^2)+(30*sin(30*%pi/180))^2)
//mag(Z1*Z4)=mag(Z2*Z3)....magnitude condition
magl=Z1*Z4//lhs
magr=Z2*Z3//rhs
printf("magl=%.f\n",magl)
printf("magr=%.f\n",magr)
printf("lhs=rhs hence,magnitude condition is satisfied \n")
theta1=40
theta2=-90
theta3=45
theta4=30
//theta1+theta4=theta2+theta3.......angle condition
thetal=theta1+theta4//lhs
thetar=theta2+theta3//rhs
printf("thetal=%.f\n",thetal)
printf("thetar=%.f\n",thetar)
printf("angle condition is not satisfied \n")
