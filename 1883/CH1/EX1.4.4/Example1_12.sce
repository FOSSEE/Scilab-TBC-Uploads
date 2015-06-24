//Chapter-1,Example1_4_4,pg 1-33

//as   n1 = nth ring      n2 = (n+8)th ring

p=8                                        //difference between rings

Dn_1=0.42                            //diameter of 5th ring 

Dn_2=0.7                             //diameter of 15th ring

R=200                                        //radius of curvature

wavelength=(Dn_2^2-Dn_1^2)/(4*p*R)                  //wavelength of light

printf('\nThe wavelength of light  is  wavelength = %.6f cm\n',wavelength)
