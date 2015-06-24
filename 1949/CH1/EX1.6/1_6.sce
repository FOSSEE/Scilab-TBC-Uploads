//Chapter-1,Example 1_6,Page 1-18
clc()

//Given Data:
lam=5.893*10^-7       //Wavelength of light
u=1.42                //Refractive index of a soap film
r=0                   //normal incidence
n=1                   //first band

//Calculations:

//i)
//Condition for dark fringe is
//2ut*cos r=n*lam
t1=n*lam/(2*u*cos(r))      //thickness of film for dark black fringe
printf('Thickness of the film for dark black fringe is =%.10f m \n \n',t1)

//ii)
//Now, condition for bright fringe is
//2ut*cos r=(2n-1)lam/2
t2=lam/(2*2*u*cos(r))      //Thickness of film for bright fringe
printf(' Thickness of film for bright fringe is =%.10f m \n \n',t2)

