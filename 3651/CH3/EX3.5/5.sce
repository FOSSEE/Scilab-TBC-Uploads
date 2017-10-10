//Variable declaration
KE=10             //Kinetic Energy of neutron in keV
m=1.675*10**-27
h=6.625*10**-34
//Calculations
KE=10**4*1.6*10**-19      //in joule
v=((2*KE)/m)**(1/2)       //derived from KE=1/2*m*v**2
lamda=h/(m*v)
//Results
printf('Velocity =%0.3f  *10**6 m/s \n  ',(v/10**6))
printf('Wavelength =%0.3f  Angstorm \n ',(lamda*10**10))
