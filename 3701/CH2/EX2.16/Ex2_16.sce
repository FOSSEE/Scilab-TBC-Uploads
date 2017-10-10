////Given
v1=2.000*10**-10                       //m
v2=2.048*10**-10                       //m
a=180                                  //degree
a1=60                                  //degree
h=6.6*10**-34
c=3*10**8

//Calculation
//
b=(v2-v1)/(1-cos(a*3.14/180.0))
V=v1+b*(1-cos(60*3.14/180.0))
E=(h*c*(V-v1))/(V*v1)

//Result
printf("\n (a) wavelength of radiation scattered at an angle of 60 degree  %0.3f A",V*10**10)
printf("\n (b) Energy of the recoil electron is  %0.2f *10**-18 J",E*10**18)
