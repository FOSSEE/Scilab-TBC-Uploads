clear
//Each angle is divided into two rectangles 

//variable declaration

A1=600.0*15.0                               //Area of 1,mm^2
A2=140.0*10.0                                //Area of 2,mm^2
A3=150.0*10.0
A4=400.0*20.0
A=A1+A2*2+A3*2+A4                                 //Total area,mm^2 

//The distance of the centroidal axis from the bottom fibres of section 

Y1=320.0
Y2=100.0
Y3=25.0
Y4=10.0

yc=(A1*Y1+2*A2*Y2+A3*Y3*2+A4*Y4)/A
printf("\n yc")
//Now, Moment of inertia about the centroidalaxis=Sum of the moment of inertia of the individual rectangles

Ixx=(15.0*(600**3)/12.0)+(A1*((yc-320)**2))+((10.0*(140**3.0)/12.0)+(A2*((yc-100.0)**2)))*2+((150*(10**3)/12.0)+(A3*((yc-15.0)**2)))*2+(400.0*(20.0**3.0)/12.0)+(A4*((yc-10.0)**2))


printf("\n Ixx= %0.1f  mm^4",Ixx)
