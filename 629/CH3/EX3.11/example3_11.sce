clear
clc
//Example 3.11 HYDROSTATIC FORCE ON A CURVED SURFACE
//Equilibrium in horizontal direction
g_w=9.81; //specific weight of water[kN/m^3]
r=2; //[m]
w=1; //[m]
A=r*w //area[m^2]
l=5; //[m]
p=g_w*l //pressure[kN/m^3]
Fx=p*A //horizontal force on side AC[kN]

//Equilibrium in vertical direction
h=4; //height[m]
p0=g_w*h //[kN/m^2]
Fv=p0*A //vertical force on side CB[kN]
W=g_w*(%pi*r^2/4)*w //weight of water in ABC[kN]
Fy=W+Fv //[kN]

//Line of action (horizontal force)
y=5; //[m]
ycp=y+(w*r^3/12)/(y*A) //[m]

//For line of action for vertical forces, sum moments about point C
xW=4*r/(3*%pi) //distance of centroid from C[m]
xcp=(Fv*r/2+W*xW)/Fy //[m]
printf("\n The line of action for vertical force, xcp = %.3fm\n and for horizontal force, ycp = %.3fm\n\n",xcp,ycp)

//tan(theta)=Fy/Fx
theta=atand(Fy/Fx) //angle with the horizontal(degrees)
F=sqrt(Fx^2+Fy^2) //resultant force[kN]
printf("\n Hydrostatic force on curved surface AB = %.1f kN at %.f degrees to the horizontal.\n",F,theta)

