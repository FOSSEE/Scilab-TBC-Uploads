//Centroid of dam
//refer fig. 9.13 and select axis accordingly
A1=2*6/2  //m^2
A2=2*7.5  //m^2
A3=3*5/2  //m^2
A4=1*4  //m^2
A=A1+A2+A3+A4  //m^2
//centroid of simple geometries are
x1=2*2/3  //m
y1=6/3  //m
x2=2+1  //m
y2=7.5/2  //m
x3=2+2+3/3  //m
y3=1+5/3  //m
x4=4+4/2  //m
y4=0.5  //m
xbar=(A1*x1+A2*x2+A3*x3+A4*x4)/(A)  //m
ybar=(A1*y1+A2*y2+A3*y3+A4*y4)/(A)  //m
printf("centroid is at\nxbar=%.3f mm\nybar=%.3f mm",xbar,ybar)

