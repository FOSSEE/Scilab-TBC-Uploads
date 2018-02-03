clear
//

//variable declaration


A1=100.0*13.5                               //Area of 1,mm^2
A2=(400.0-27.0)*8.1                         //Area of 2,mm^2
A3=100.0*13.5                               //Area of 3,mm^2 

A=A1+A2+A3                                 //Total area,mm^2 

//The given section is symmetric about horizontal axis passing through the centroid g2 of the rectangle A2.

X1=50.0
X2=8.1/2.0
X3=50.0

xc=(A1*X1+A2*X2+A3*X3)/A

Y1=386.5+13.5/2.0
Y2=200.0
Y3=13.5/2

yc=(A1*Y1+A2*Y2+A3*Y3)/A

//With reference to the centroidal axis x-x and y-y

Ixx=(100.0*(13.5**3)/12.0)+(A1*((200-(13.5/2))**2))+(8.1*(373**3.0)/12.0)+0+(100*(13.5**3)/12.0)+(A3*((200-(13.5/2))**2))
printf("\n Ixx= %0.1f  mm^4",Ixx)

Iyy=(13.5*(100.0**3)/12.0)+(A1*((50-xc)**2))+(373.0*(8.1**3.0)/12.0)+A2*(21.68**2)+(13.5*(100**3)/12.0)+(A3*((50-xc)**2))

printf("\n Iyy= %0.1f  mm^4",Iyy)
