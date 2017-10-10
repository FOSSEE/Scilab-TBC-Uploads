
clear//

//Variable Declaration
A=2000 //Area of the plane in mm^2
Ix=40*10**6 //Momnet of Inertia in mm^4
d1=90 //Distance in mm
d2=70 //Distance in mm

//Calculations
Ix_bar=Ix-(A*d1**2) //Moment of Inertia along x_bar axis in mm^4
Iu=Ix_bar+A*d2**2 //Moment of Inertia along U-axis in mm^4

//Result
printf("\n Ix_bar")
printf("\n The moment of inertia along u-axis is %0.1f mm^4",Iu)
