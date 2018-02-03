clear
//

//The composite figure is divided into three simple figures and taking A as origin coordinates of their centroids 

//variable declaration

L1=400.0        //length of wire AB,mm
L2=150.0*%pi     //length of wire BC,mm
L3=250.0        //length of wire CD,mm
theta=30*%pi/180

//The wire is divided into three segments AB, BC and CD. Taking A as origin the coordinates of the centroids of AB, BC and CD are (X1,Y1),(X2,Y2),(X3,Y3)
X1=200.0
X2=475.0
X3=400+300.0+250*cos(theta)/2

Y1=0
Y2=2*150/%pi 
Y3=125*sin(theta)
L=L1+L2+L3     //Total length,mm

xc=(L1*X1+L2*X2+L3*X3)/L

printf("\n xc= %0.2f  mm",xc)


yc=(L1*Y1+L2*Y2+L3*Y3)/L

printf("\n yc= %0.2f  mm",yc)
