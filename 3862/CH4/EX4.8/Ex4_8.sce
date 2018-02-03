clear
// The composite section is divided into three simple figures, a triangle, a rectangle and a semicircle

//
//variable declaration

A1=1.0*3.0*4.0/2.0                  //Area of 1,m^2
A2=6.0*4.0                          //Area of 2,m^2
A3=1.0*%pi*(2**2)/2                //Area of 3**m^2

//The coordinates of centroids of these three simple figures are:

X1=6.0+3.0/3.0
X2=3.0
X3=-(4*2)/(3.0*%pi)

Y1=4.0/3.0
Y2=2.0
Y3=2.0

A=A1+A2+A3

xc=(A1*X1+A2*X2+A3*X3)/A

printf("\n xc= %0.4f  m",xc)


yc=(A1*Y1+A2*Y2+A3*Y3)/A

printf("\n yc= %0.3f  m",yc)
