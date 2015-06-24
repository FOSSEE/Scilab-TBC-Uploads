//Chapter-5,Example5_3_11,pg 5-11

//a proton and alpha particle are accelerated by the same potential difference

m_p=1.67*10^-27                                         //mass of proton

m_a=4*m_p                                                //mass of alpha particle (assume mass of alpha particle to be 4 times the mass of proton)

e=1.6*10^-19                                           //charge of proton

e_a=2*e                                                 //charge of an alpha particle

h=6.63*10^-34                                          //plancks constant

wavelength_p=h/sqrt(2*m_p*e)                                    //wavelength of proton

wavelength_a=h/sqrt(2*m_a*e_a)                                   //wavelength of an alpha particle
 
ratio=wavelength_p/wavelength_a                                        //ratio of the de Broglie wavelengths associated with proton and alpha particle

printf("\nthe ratio of wavelengths associated with proton and alpha particle = %.3f\n",ratio)
