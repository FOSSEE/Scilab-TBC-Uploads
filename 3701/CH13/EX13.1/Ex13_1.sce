////Given
d=0.1                                 //m
v=10.0**3                               //m/s
a=50                                  //gradient of a magnet field Wb/m**2/m
b=9.274*10**-27                       //J/Wb/m**2
h=1.6605*10**-27

//Calculation
M=107.868*h
z=(b/M)*a*(d**2/v**2)

//Result
printf("\n seperation between the two component  %0.1f mm",z*10**8)
