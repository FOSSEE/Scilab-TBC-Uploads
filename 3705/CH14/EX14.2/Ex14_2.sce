
clear//

//Variable Declaration
R=45 //Radius of the circle in mm
r=20 //Radius of the smaller circle in mm
h=100 //Depth of the straight section in mm

//Calculations
//Part 1

//Triangle
b=2*R //Breadth in mm
A_t=b*h*0.5 //Area in mm^2
Ix_bar_t=b*h**3*36**-1 //Moment of inertia in mm^4
y_bar1=2*3**-1*h //centroidal axis in mm
Ix_t=Ix_bar_t+A_t*y_bar1**2 //moment of inertia in mm^4

//Semi-circle
A_sc=%pi*R**2*0.5 //Area of the semi-circle in mm^2
Ix_bar_sc=0.1098*R**4 //Moment of inertia in mm^4
y_bar2=h+(4*R*(3*%pi)**-1) //Distance of centroid in mm
Ix_sc=Ix_bar_sc+A_sc*y_bar2**2 //Moment of inertia in mm^4

//Circle
A_c=%pi*r**2 //Area of the circle in mm^2
Ix_bar_c=%pi*r**4*4**-1 //Moment of inertia in mm^4
y_bar3=h //Distance of centroid in mm
Ix_c=Ix_bar_c+A_c*y_bar3**2 //Moment of inertia in mm^4

//Composite Area
A=A_t+A_sc-A_c //Total area in mm^2
Ix=Ix_t+Ix_sc-Ix_c //Moment of inertia in mm^4

//Part 2
y_bar=(A_t*y_bar1+A_sc*y_bar2-A_c*y_bar3)/(A) //Location of centroid in mm
Ix_bar=Ix-A*y_bar**2 //Moment of inertia in mm^4

//Result
printf("\n Moment of inertia about x-axis is %0.0f mm^4",Ix)
printf("\n Moment of inertia about the centroidal axis is %0.0f mm^4",Ix_bar)
