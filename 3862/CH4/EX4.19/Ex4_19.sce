clear
// The built-up section is divided into six simple rectangles

//variable declaration


A1=250.0*10.0                               //Area of 1,mm^2
A2=40.0*10.0                                //Area of 2,mm^2

A=A1*2+A2*4                                 //Total area,mm^2 


Y1=5.0
Y2=30.0
Y3=15.0
Y4=255.0
Y5=135.0

yc=(A1*Y1+2*A2*Y2+A2*Y3+A2*Y4+A1*Y5)/A

//Now, Moment of inertia about the centroidalaxis=Sum of the moment of inertia of the individual rectangles

Ixx=(250.0*(10**3)/12.0)+(A1*((yc-5)**2))+((10.0*(40**3.0)/12.0)+(A2*((yc-30.0)**2)))*2+(40*(10**3)/12.0)+(A2*((yc-15.0)**2))+(10.0*(250.0**3.0)/12.0)+(A1*((yc-135.0)**2))+(40.0*(10.0**3)/12)+(A2*((yc-255)**2))

printf("\n Ixx= %0.1f  mm^4",Ixx)
