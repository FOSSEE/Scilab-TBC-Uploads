//Determine centroid
//refer fig. 9.14
//This figure is divided into three simple figures
A1=3*4/2  //m^2
A2=6*4  //m^2
A3=%pi*(1/2)*2^2  //m^2
A=A1+A2+A3  //m^2
//Co-ordinates of centroid
x1=6+3/3  //m
ya=4/3  //m
x2=3  //m
y2=2  //m
R=2
x3=(-4*R)/(3*%pi)  //m
y3=2  //m
xbar=(A1*x1+A2*x2+A3*x3)/(A)  //m
ybar=(A1*ya+A2*y2+A3*y3)/(A)  //m
printf("\nxbar=%.3f m\nybar=%.3f m",xbar,ybar)



