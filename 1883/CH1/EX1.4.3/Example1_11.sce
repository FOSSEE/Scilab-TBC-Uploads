//Chapter-1,Example1_4_3,pg 1-33

n_1=5                                       //5th ring 

n_2=15                                      //15th ring 

p=n_2-n_1                                    //difference between rings

Dn_1=0.336                            //diameter of 5th ring 

Dn_2=0.59                             //diameter of 15th ring

wavelength=5890*10^-8                            //wavelength of light

R=(Dn_2^2-Dn_1^2)/(4*p*wavelength)                  //radius of curvature

printf('\nThe radius of curvature is  R = %.2f cm\n',R)
