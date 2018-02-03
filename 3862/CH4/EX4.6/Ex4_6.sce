clear
//variable declaration

A1=100.0*20              //Area of 1 ,mm^2
A2=100.0*20.0            //Area of 2,mm^2
A3=150.0*30.0            //Area of 3,mm^2

//Selecting the coordinate system, due to symmetry centroid must lie on y axis,

X1=0
X2=0

Y1=30+100+20/2
Y2=30+100/2
Y3=30/2

A=A1+A2+A3


yc=(A1*Y1+A2*Y2+A3*Y3)/A

printf("\n yc= %0.2f  mm",yc)

printf("\n Thus, the centroid is on the symmetric axis at a distance 59.71 mm from the bottom")

