clear
//

//variable declaration

L1=600.0      //length of wire AB,mm
L2=200.0      //length of wire BC,mm
L3=300.0      //length of wire CD,mm
theta=45*%pi/180
//The wire is divided into three segments AB, BC and CD. Taking A as origin the coordinates of the centroids of AB, BC and CD are (X1,Y1),(X2,Y2),(X3,Y3)

X1=300.0
X2=600.0
X3=600.0-150*cos(theta)
Y1=0
Y2=100
Y3=200+150*sin(theta)
L=L1+L2+L3     //Total length,mm

xc=(L1*X1+L2*X2+L3*X3)/L

printf("\n xc= %0.2f  mm",xc)


yc=(L1*Y1+L2*Y2+L3*Y3)/L

printf("\n yc= %0.2f  mm",yc)
