clear
//

//variable declaration
X=40.0
A1=14.0*12.0*(X**2)                           //Area of rectangle**mm^2
A2=6.0*4.0*(X**2)/2.0                         //Area of triangle**mm^2
A3=-4*4*(X**2)                                //Area of removed subtracted**mm^2
A4=-%pi*(4*X**2)/2.0                           //Area of semicircle to be subtracted**mm^2
A5=-%pi*(4*X**2)/4.0                           //Area of quarter of circle to be subtracted**mm^2

X1=7.0*X
X2=14*X+2*X
X3=2*X
X4=6.0*X
X5=14.0*X-(16*X/(3*%pi))

Y1=6.0*X
Y2=4.0*X/3.0
Y3=8.0*X+2.0*X
Y4=(16.0*X)/(3*%pi)
Y5=12*X-4*(4*X/(3*%pi))

A=A1+A2+A3+A4+A5

xc=(A1*X1+A2*X2+A3*X3+A4*X4+A5*X5)/A

printf("\n xc= %0.2f  m",xc)


yc=(A1*Y1+A2*Y2+A3*Y3+A4*Y4+A5*Y5)/A

printf("\n yc= %0.2f  m",yc)
