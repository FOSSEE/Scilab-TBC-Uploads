clc 
// Given that
E = 10 // energy of electron in kev
B = 5e-5 // magnetic field of earth in tesla
e = 1.6e-19 // charge on an electron in C
// Sample Problem 36 on page no. 12.46
printf("\n # PROBLEM 36 # \n")
f = e * B / 9.1e-31
E_ = E * 1.6e-16
v = sqrt((2 * E_) / 9.1e-31)
r = v / f
printf("Standard formula used \n f = e * B / 9.1e-31 . \n")
printf("\n Frequency of cyclotron = %e per sec,\n Larmour radius = %f meter",f,r)
