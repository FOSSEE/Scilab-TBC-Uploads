//locating centroid
//refer fig. 9.12
//due to symmetry centroid must lie on y-axis
xbar=0
A1=100*20  //mm^2
//for A1
y1=30+100+20/2  //mm
//for A2
A2=100*20  //mm^2
y2=30+100/2  //mm
A3=150*30  //mm^2
y3=30/2  //mm
A=2000+2000+4500
ybar=(A1*y1+A2*y2+A3*y3)/A  //mm
printf("The centroid is on the symmetric axis at a distance of %.2f mm from the bottom as shown in figure 9.12",ybar)

