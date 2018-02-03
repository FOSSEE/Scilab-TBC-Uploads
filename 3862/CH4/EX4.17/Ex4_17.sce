clear
//

//The given composite section may be divided into simple rectangles and triangle

//variable declaration


A1=100.0*30.0                               //Area of 1,mm^2
A2=100.0*25.0                               //Area of 2,mm^2
A3=200.0*20.0                               //Area of 3,mm^2 
A4=87.5*20.0/2.0                            //Area of 4,mm^2
A5=87.5*20.0/2.0                            //Area of 5,mm^2

A=A1+A2+A3+A4+A5                            //Total area,mm^2 

//Due to symmetry, centroid lies on the axis y-y. A reference axis (1)–(1) is choosen as shown in the figure. The distance of the centroidal axis from (1)–(1)

X1=100.0
X2=100.0
X3=100.0
X4=2.0*87.5/3.0
X5=200-X4
xc=(A1*X1+A2*X2+A3*X3+A4*X4+A5*X5)/A

Y1=135.0
Y2=70.0
Y3=10.0
Y4=(20.0/3.0)+20.0
Y5=Y4

yc=(A1*Y1+A2*Y2+A3*Y3+A4*Y4+A5*Y5)/A

//With reference to the centroidal axis x-x and y-y, the centroid of the rectangle A1 is g1 (0.0,135.0-yc), that of A2 is g2(0.0,70.00-yc), that of A3 is g3 (0.0, yc-10.0), the centroid of triangle A4 is g4 (41.66,yc-20.0-(20.0/3.0) ) and that of A5 is g5 (41.66,yc-20.0-(20.0/3.0)).


Ixx=(100.0*(30**3)/12.0)+(A1*((135.0-yc)**2))+(25.0*(100**3.0)/12.0)+(A2*((70.0-yc)**2))+(200*(20**3)/12.0)+(A3*((yc-10.0)**2))+((87.5*(20**3)/36.0)+(A4*((yc-20.0-(20.0/3.0))**2)))*2

printf("\n Ixx= %0.1f  mm^4",Ixx)

Iyy=(30.0*(100**3)/12.0)+(100.0*(25**3.0)/12.0)+(20*(200**3)/12.0)+((20.0*(87.5**3)/36.0)+(A4*((41.66)**2)))*2

printf("\n Iyy= %0.1f  mm^4",Iyy)
