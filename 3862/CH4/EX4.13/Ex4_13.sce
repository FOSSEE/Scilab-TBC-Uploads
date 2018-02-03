clear
//The given composite section can be divided into two rectangles 

 
//variable declaration


A1=125.0*10.0                         //Area of 1,mm^2
A2=75.0*10.0                         //Area of 2,mm^2
A=A1+A2                               //Total area,mm^2 

//First, the centroid of the given section is to be located. Two reference axis (1)–(1) and (2)–(2) 

//The distance of centroid from the axis (1)–(1)

X1=5.0
X2=10.0+75.0/2

xc=(A1*X1+A2*X2)/A

//Similarly, the distance of the centroid from the axis (2)–(2)

Y1=125.0/2
Y2=5.0

yc=(A1*Y1+A2*Y2)/A

//With respect to the centroidal axis x-x and y-y, the centroid of A1 is g1 (xc-5, (85/2)-xc) and that of A2 is g2 ((135/2)-yc, yc-5). 
Ixx=(10*(125**3)/12)+(A1*(21.56**2))+(75.0*(10.0**3.0)/12)+(A2*((39.94)**2))

printf("\n Ixx= %0.1f  mm^4",Ixx)

Iyy=(125*(10**3)/12)+(A1*(15.94**2))+(10*(75**3)/12)+(A2*(26.56**2))                   

printf("\n Iyy= %0.1f  mm^4",Iyy)

//Izz=Polar moment of inertia

Izz=Ixx+Iyy

printf("\n Izz= %0.1f  mm^4",Izz)