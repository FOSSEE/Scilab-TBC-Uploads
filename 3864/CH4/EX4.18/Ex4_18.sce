clear
//

//Initilization of Variables

F=30*10**3 //N //Shear Force

//Channel Section
d=400 //mm //Depth of web 
t=10 //mm //THickness of web
t2=15 //mm //Thickness of flange
b=100 //mm //Width of flange

//Rectangular Welded section
b2=80 //mm //Width
d2=60 //mm //Depth

//Calculations

//Distance of Centroid From Top Fibre
y=(d*t*t*2**-1+2*t2*(b-t)*((b-t)*2**-1+10)+d2*b2*(d2*2**-1+t))*(d*t+2*t2*(b-t)+d2*b2)**-1 //mm

//Moment Of Inertia of the section about N-A
I=1*12**-1*d*t**3+d*t*(y-t*2**-1)**2+2*(1*12**-1*t2*(b-t)**3+t2*(b-t)*(((b-t)*2**-1+t)-y)**2)+1*12**-1*d2**3*b2+d2*b2*(d2*2**-1+t-y)**2

//Shear stress at level of weld
sigma=F*d*t*(y-t*2**-1)*((b2+t2+t2)*I)**-1 //N/mm**2

//Max Shear Stress occurs at Neutral Axis
X=d*t*(y-t*2**-1)+2*t2*(y-t)*(y-t)*2**-1+b2*(y-t)*(y-t)*2**-1

sigma_max=F*X*((b+t)*I)**-1

//Result
printf("\n Shear stress in the weld is %0.2f  N/mm**2",sigma)
printf("\n Max shear stress is %0.2f  N/mm**2",sigma_max)
