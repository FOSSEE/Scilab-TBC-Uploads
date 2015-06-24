//Chapter-1,Example 1_16,Page 1-42
clc()

//Given Data:
lam=6*10^-7       //wavelength of light
k=0.125*10^-4     //k=D(n+1)^2-Dn^2.
u=1               //Refractive index of medium between lens and plate
//Calculations:

//i)
lam1=4.5*10^-7   //new wavelength of light
//Difference between squres of diameters of successive rings is directly proportional to wavelength.So,
k1=lam1/lam*k    //new Difference between squres of diameters of successive rings after changing wavelength
printf('New Difference between squres of diameters of successive rings after changing wavelength is =%.8f m^2 \n',k1)

//ii)
u2=1.33          //Refractive index of liquid introduced between lens and plate
//Difference between squres of diameters of successive rings is inversely proportional to Refractive index.so,
k2=u/u2*k        //new Difference between squres of diameters of successive rings after changing refractive index
printf(' New Difference between squres of diameters of successive rings after changing refrective index is =%.8f m^2 \n',k2)

//iii)
//Difference between squres of diameters of successive rings is directly proportional to Radius of curvature.So,
//after doubling radius of curvature,
k3=2*k           //new Difference between squres of diameters of successive rings after doubling radius of curvature
printf(' New Difference between squres of diameters of successive rings after doubling radius of curvature is =%.8f m^2 \n',k3)
