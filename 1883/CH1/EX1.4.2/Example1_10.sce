//Chapter-1,Example1_4_2,pg 1-32

//For dark rings Dn=sqrt(4*R*n*wavelength)

n=10                    //10th ring

Dn=0.5                  //diameter of 10th ring 

wavelength=5*10^-5             //wavelength of light

R=Dn^2/(4*n*wavelength)        //radius of curvature 

t=Dn^2/(8*R)            //thickness of film

printf('\nThe radius of curvature is  R = %.2f cm\n',R)

printf('\nThe thickness of film is  t = %.5f cm\n',t)

//mistake in textbook
