//Chapter-3,Example3_3_8,pg 3-8

//In air

angle_0_air=30                                                  //acceptance angle of an optical fibre

NA=sind(angle_0_air)                                     //Numerical aperture is 'NA^2 = n1^2 - n2^2'   also numerical aperture is 'NA=sin(angle)'

n0=1.33                                                        //refractive index of medium

angle_0=asind(NA/n0)                                          //For medium numerical aperture is 'NA=n0*sin(angle_0)'

printf("\nThe acceptance angle in medium is angle_0 = %.2f Degree\n",angle_0)

