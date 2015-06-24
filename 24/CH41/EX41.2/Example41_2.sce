//Given that
B = 1.80  //in T
Uz  =1.41*10^-26  //in J/T
h = 6.62*10^-34  //in J-s
c = 3*10^8  //in m/s

//Sample Problem 42-2
printf("**Sample Problem 42-2**\n")
f = 2*Uz*B/h
printf("The frequency of the alternating field is %e Hz\n", f)
lambda = c/f
printf("The wavelength of the field is %fm", lambda)