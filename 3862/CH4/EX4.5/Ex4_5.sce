clear
//variable declaration

A1=150.0*12.0         //Area of 1 ,mm^2
A2=(200.0-12.0)*12.0        //Area of 2,mm^2

X1=75
X2=6

Y1=6
Y2=12+(200-12)/2

A=A1+A2

xc=(A1*X1+A2*X2)/A

printf("\n xc= %0.2f  ",xc)

yc=(A1*Y1+A2*Y2)/A

printf("\n yc= %0.2f  mm",yc)

printf("\nThus, the centroid is at x = 36.62 mm and y = 61.62 mm ")

