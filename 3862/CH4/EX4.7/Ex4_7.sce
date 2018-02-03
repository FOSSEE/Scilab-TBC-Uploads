clear
// Note that it is convenient to take axis in such a way that the centroids of all simple figures are having positive coordinates. If coordinate of any simple figure comes out to be negative, one should be careful in assigning the sign of moment of area 

//variable declaration

A1=2.0*6.0*1.0/2.0              //Area of 1,m^2
A2=2.0*7.5                      //Area of 2,m^2
A3=3.0*5.0*1.0/2                //Area of 3,m^2
A4=1.0*4.0                      //Area of 4,m^2

//The composite figure can be conveniently divided into two triangles and two rectangle

X1=2.0*2.0/3.0
X2=2.0+1.0
X3=2.0+2.0+(1.0*3.0/3.0)
X4=4.0+4.0/2.0

Y1=6.0/3.0
Y2=7.5/2.0
Y3=1.0+5.0/3.0
Y4=1/2.0

A=A1+A2+A3+A4

xc=(A1*X1+A2*X2+A3*X3+A4*X4)/A

printf("\n xc= %0.3f  m",xc)


yc=(A1*Y1+A2*Y2+A3*Y3+A4*Y4)/A

printf("\n yc= %0.3f  m",yc)
