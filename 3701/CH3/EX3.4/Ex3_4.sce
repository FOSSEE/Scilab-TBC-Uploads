////Given
v=1200                                 //A
R=1.097*10**7                          //m-1
n1=2.0
n2=3.0

//Calculation
v1=(R*(1-(1/n1**2)))
v2=(R*(1-(1/n2**2)))
V=v1/v2
V1=V*v

//Result
printf("\n Wavelength of the second line is  %0.3f A", V1)
