clear
//

//The section is divided into three simple figures viz., a triangle ABC, a rectangle ACDE and a semicircle. 

//variable declaration

r=20.0                    //radius of semicircle
A1=80.0*20.0/2         //Area of triangle ABC 
A3=40.0*80.0           //Area of rectangle ACDE  
A4=%pi*(r**2)/2       //Area of semicircle
At1=30.0*20.0/2.0
At2=50.0*20.0/2.0
A=A1+A3-A4             //Total area

X1=2.0*30.0/3.0
X2=50.0*30.0/3.0
X3=40.0
X4=40.0

xc=(At1*X1+At2*X2+A3*X3-A4*X4)/A
//mistake in book

Y1=(20.0/3.0)+40.0
Y3=20.0
Y4=(4.0*20.0)/(3.0*%pi)

yc=(A1*Y1+A3*Y3-A4*Y4)/A
printf("\n %0.3f %0.3f ",xc,yc)

//
//Moment of inertia of the section about axis x-x=Sum of the momentsof inertia of individual triangular areasabout axis

Ixx=(80.0*(20.0**3)/36) +A1*((60.0-(2*20.0/3.0)-yc)**2)+(80*(40**3)/12)+(A3*((yc-20.0)**2))-((0.0068598*(20**4))+(A4*((yc-Y4)**2)))

printf("\n Ixx= %0.0f  mm^4",Ixx)


Iyy=(20.0*(30.0**3)/36) +At1*((xc-(2*30.0/3.0))**2)+(20*(50**3)/36)+(At2*((xc-(30.0+(50/3)))**2))+((40*(80**3)/12)+(A3*((xc-40)**2)))-((%pi*(40**4))/(2*64))-(A4*((40-xc)**2))

printf("\n Iyy= %0.0f  mm^4",Iyy)
