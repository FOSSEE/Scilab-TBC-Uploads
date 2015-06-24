//Chapter-3,Example 3_4,Page 3-20
clc()

//given data:
u1=3.6        //Refractive Index of the Substance at 850 nm
u2=3.4        //Refractive Index of the Substance at 1300 nm
Vv=3*10^8     //Velocity of light in free space

//Calculations:
// i)Finding wavelength at 850 nm
Vs1=Vv/u1             //Velocity of light in substance at 850 nm
printf('Velocity of light in substance at 850 nm =%.2f m/sec \n \n',Vs1)

lam1=850*10^-9/u1    //Wavelength of light in substance at 850nm
printf(' Wavelength of light in substance at 850nm =%.10f m \n \n',lam1)


// ii)Finding wavelength at 1300 nm
Vs2=Vv/u2             //Velocity of light in substance at 1300 nm
printf(' Velocity of light in substance at 1300 nm =%.2f m/sec \n \n',Vs2)

lam2=1300*10^-9/u2   //Wavelength of light in substance at 1300nm
printf(' Wavelength of light in substance at 1300nm =%.10f m \n',lam2)
