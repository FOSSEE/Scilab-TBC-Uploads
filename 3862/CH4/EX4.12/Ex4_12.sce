clear
//The given composite section can be divided into two rectangles 

//
//variable declaration


A1=150.0*10.0                         //Area of 1,mm^2
A2=140.0*10.0                         //Area of 2,mm^2
A=A1+A2                               //Total area,mm^2 
//Due to symmetry, centroid lies on the symmetric axis y-y. The distance of the centroid from the top most fibre is given by:

Y1=5.0
Y2=10.0+70.0

yc=(A1*Y1+A2*Y2)/A

//Referring to the centroidal axis x-x and y-y, the centroid of A1 is g1 (0.0, yc-5) and that of A2 is g2 (0.0, 80-yc)

//Moment of inertia of the section about x-x axis Ixx = moment of inertia of A1 about x-x axis + moment of inertia of A2 about x-x axis.


Ixx=(150*(10**3)/12)+(A1*((yc-5)**2))+(10*(140**3)/12)+(A2*((80-yc)**2))

printf("\n Ixx= %0.1f  mm^4",Ixx)

Iyy=(10*(150**3)/12)+(140*(10**3)/12)

printf("\n Iyy= %0.1f  mm^4",Iyy)

//Hence, the moment of inertia of the section about an axis passing through the centroid and parallel to the top most fibre is Ixxmm^4 and moment of inertia of the section about the axis of symmetry is Iyy mm^4. 
//The radius of gyration is given by

kxx=sqrt(Ixx/A)
printf("\n kxx= %0.2f  mm",kxx)

kyy=sqrt(Iyy/A)
printf("\n kyy= %0.2f  mm",kyy)
