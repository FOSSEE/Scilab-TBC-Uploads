clc
//to calculate refractive index 
D=10 //distance in  cm
twod=0.2 //distance detween the slits in cm
t=0.05 //thickness of transparent plate in cm
deltaX=0.5 //in cm
mu=(deltaX*twod/(D*t))+1
disp("the refractive index of the transparent plate is mu="+string(mu)+"unitless")
//to calculate order
n=10 
lambda=7000*10^-8 //wavelength in cm
//path difference =n*lambda
n1=n*lambda/(5000*10^-8) 
disp("the order will be visible is n1="+string(n1)+"unitless")
//to calculate distance between the two coherent sources
D=100 //distance in m 
lambda=6000*10^-8 //wavelength in cm
omega=0.05 //distance between two consecutive bright fringes on the screen in cm
twod=D*lambda/omega
disp("the distance between the coherent sources is twod="+string(twod)+"cm")
//to calculate wavelength
Xn=1 //distance of fourth bright fringe from the central fringe in cm
twod=0.02 //distance between the two coherent sources in cm
n=4 
D=100 //distance in cm 
lambda=Xn*twod/(n*D)
disp("the wavelength of light is lambda="+string(lambda)+"cm")
//to calculate wavelength
//position of nth bright fringe from the centre of the central fringe is Xn=D*n*lambda/2d----eq(1)
//fringe width umega=D*lambda/2d---------------------eq(2)
//from eq(1) and eq(2) we get, Xn=n*omega
//for 11th bright fringe X11=11*omega
//position for nth dark fringe Xn'=(2n+1)D*lambda/4d
//X4'=(7/2)*omega
//distance between 11th and 4th dark fringe =0.8835 cm
//we get  
omega=0.1178 //in cm
twod=0.05 //distance between slis in cm
D=100 // distance in cm
lambda=omega*twod/D 
disp("the wavelength of light is lambda="+string(lambda)+"cm")
//to calculate changed fringe width
//X10-X0=10*omega
//given that X10-X0=14.73-12.34=2.39mm 
omega=0.239 //in mm
lambda=6000 //wavelength in angstrom
lambda1=5000 //lambda'=5000 angstrom
omega1=omega*lambda1/lambda
disp("the changed fringe width is omega1="+string(omega1)+"mm")
//to calculate thickness of mica sheet
n=3
mu=1.6 //refractive index(unitless)
lambda=5.89*10^-5 //wavelength in cm
t=n*lambda/(mu-1)
disp("the thickness of mica sheet is t="+string(t)+"cm")
//answer of thickness is given wrong in the book =0.002945 cm
