////given
m0=9.1*10**-31                            //Kg
c=3*10**8                                //m/s
h=6.6*10**-34                            //Js
v1=2.0*10**-10                           //m

//Calculation
//
v= (h/(m0*c))*(1-(cos(90))*3.14/180.0)
v2=v+v1
v0=v2-v1
E=(h*c*(v0))/(v1*v2)
b=(1/(sin(90)*3.14/180.0))*((v2*10**-10/v1)-cos(90)*3.14/180.0)
angle=3.14/2.0-atan(b)

//Result
printf("\n (a) the wavelength of scattered photon is  %0.3f A",v2*10**10)
printf("\n (b) The energy of recoil electron is  %0.2f *10**-17 J",E*10**17)
printf("\n (c) angle at which the recoil electron appears  %0.2f degree",angle)
