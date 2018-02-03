clear
//
//

//Initilization of Variables

F=40*10**3 //N //shear Force

//I-section

//Flanges
b=80 //mm //Width of flange
t=20 //mm //Thickness

//Web
d=200 //mm //Depth
t2=20 //mm //Thickness

//Flange-2
b2=160 //mm //Width
t3=20 //mm //Thickness

D=240 //mm //Overall Depth

//Calculations

//Distance of N-A from Top Fibre 
y=(b*t*t*2**-1+d*t2*(t+d*2**-1)+b2*t3*(t+d+t3*2**-1))*(b*t+d*t2+b2*t3)**-1 //mm

//Moment of Inertia
I=1*12**-1*b*t**3+b*t*(y-(t*2**-1))**2+1*12**-1*t2*d**3+t2*d*(y-(t+d*2**-1))**2+1*12**-1*b2*t3**3+t3*b2*((d+t+t3*2**-1)-y)**2 //mm**4

//Shear stress bottom of flange
sigma=F*b*t*(y-t*2**-1)*(b*I)**-1 //N/mm**2

//At same Level but in web
sigma2=F*b*t*(y-t*2**-1)*(t2*I)**-1 //N/mm**2

//for shear stress at N.A
X=b*t*(y-t*2**-1)+t2*(y-t)*(y-t)*2**-1 //mm**3
sigma3=F*X*(t2*I)**-1 //N/mm**2

//Shear stress at bottom of web

X=b2*t3*((D-y)-t3*2**-1) //mm**3

//Stress at bottom of web
sigma4=F*X*(t2*I)**-1 //N/mm**2

//Stress at Lower flange
sigma5=F*X*(b2*I)**-1 //N/mm**2

//Result
printf("\n The Shear Force Diagram is the result")
