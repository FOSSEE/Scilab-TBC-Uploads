clear
// If xc and yc are the coordinates of the centre of the circle, centroid also must have the coordinates xc and yc as per the condition laid down in the problem. The shaded area may be considered as a rectangle of size 200 mm × 150 mm minus a triangle of sides 100 mm × 75 mm and a circle of diameter 100 mm.

//
//variable declaration

Ap=200.0*150.0                              //Area of plate,mm^2
At=100.0*75.0/2.0                           //Area of triangle,mm^2
Ah=%pi*(100**2)/4.0                        //Area of hole **mm^2

A=Ap-At-Ah


X1=100.0
X2=200.0-100.0/3.0
//X3=Xc

Y1=75.0
Y2=150.0-25.0
//Y3=Yc

A=Ap-At-Ah

xc=(Ap*X1-At*X2)/(Ah+A)

printf("\n xc= %0.2f  mm",xc)

yc=(Ap*Y1-At*Y2)/(Ah+A)

printf("\n yc= %0.2f  mm",yc)
