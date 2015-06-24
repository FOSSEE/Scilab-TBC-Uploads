//Chapter-1,Example1_4_12,pg 1-38

n_1=5                                       //5th ring 

n_2=15                                      //15th ring 

p=n_2-n_1                                    //difference between rings

Dn_1=0.336                            //diameter of 5th ring 

Dn_2=0.59                             //diameter of 15th ring

R=100                                        //Radius of curvature

wavelength=(Dn_2^2-Dn_1^2)/(4*p*R)*10^8                  //wavelength of light 

printf('\nwavelength of light is = %.f A.',wavelength)

