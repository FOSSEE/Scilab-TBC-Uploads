clear
//
// The length and the centroid of portions AB, BC and CD 
// portion AB is in x-z plane, BC in y-z plane and CD in x-y plane. AB and BC are semi circular in shape

//variable declaration

L1=100.0*%pi        //length of wire AB,mm
L2=140.0*%pi        //length of wire BC,mm
L3=300.0           //length of wire CD,mm
theta=45*%pi/180

//The wire is divided into three segments AB, BC and CD. Taking A as origin the coordinates of the centroids of AB, BC and CD are (X1,Y1),(X2,Y2),(X3,Y3)
X1=100.0
X2=0
X3=300*sin(theta)

Y1=0
Y2=140
Y3=280+300*cos(theta)
Z1=2*100/%pi 
Z2=2*140/%pi 
Z3=0

L=L1+L2+L3     //Total length,mm

xc=(L1*X1+L2*X2+L3*X3)/L

printf("\n xc= %0.2f  mm",xc)


yc=(L1*Y1+L2*Y2+L3*Y3)/L

printf("\n yc= %0.2f  mm",yc)

zc=(L1*Z1+L2*Z2+L3*Z3)/L

printf("\n zc= %0.2f  mm",zc)
