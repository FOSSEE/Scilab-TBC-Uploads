clear
// The section is divided into three rectangles A1, A2 and A3

//
 
//variable declaration


A1=80.0*12.0                                 //Area of 1,mm^2
A2=(150.0-22.0)*12.0                         //Area of 2,mm^2
A3=120.0*10.0                                //Area of 3,mm^2 

A=A1+A2+A3                                   //Total area,mm^2 

//Due to symmetry, centroid lies on axis y-y. The bottom fibre (1)–(1) is chosen as reference axis to locate the centroid

Y1=150-6
Y2=(128/2) +10
Y3=5
X1=60.0
X2=60.0
X3=60.0

yc=(A1*X1+A2*X2+A3*X3)/A



xc=(A1*Y1+A2*Y2+A3*Y3)/A

//With reference to the centroidal axis x-x and y-y, the centroid of the rectangles A1 is g1 (0.0, 150-6-yc), that of A2 is g2 (0.0, 75-yc) and that of A3 is g3  (0.0, yc-5 ).

Iyy=(12*((80**3))/12)+(128*((12**3))/12)+(10*((120**3))/12)

Ixx=(80.0*(12.0**3)/12.0)+(A1*((150-6-yc)**2))+(12*(128**3.0)/12.0)+(A2*((75-yc)**2))+(120*(10**3)/12.0)+(A3*((150-10-6-yc)**2))



PolarmomentofInertia=Ixx+Iyy

printf("\n Polar moment of Inertia= %0.0f  mm^4",PolarmomentofInertia)

kxx=sqrt(Ixx/A)
printf("\n kxx= %0.2f  mm",kxx)


kyy=sqrt(Iyy/A)
printf("\n kyy= %0.2f  mm",kyy)
