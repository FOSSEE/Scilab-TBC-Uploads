//(11.6)  For liquid water at 1 atm and 20C, estimate (a) the percent error in cv that would result if it were assumed that cp = cv, (b) the velocity of sound, in m/s.

//solution

//part(a)
funcprot(0)
v = 1/998.21                                                                    //specific volume of water in m^3/kg
T = 293                                                                         //given temperature in kelvin
beta = 206.6e-6                                                                 //volume expansivity in /K
k = 45.90e-6                                                                    //isothermal compressibility in /bar

cpv = (v*T*beta^2/k)*10^2                                                       //in kj/kg.k

//Interpolating in Table A-19
cp = 4.188                                                                      //in kj/kg.k
cv = cp-cpv                                                                     //in kj/kg.k

errorPercentage = 100*(cp-cv)/cv
printf('the percentage error is:  %f',errorPercentage)

//part(b)

K = cp/cv                                                                       //specific heat ratio
c = sqrt((K*v/k)*10^5)                                                          //velocity of sound in m/s
printf('\nthe velocity of sound in m/s is:  %f',c)













