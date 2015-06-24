//Given that
L = 10  //in meter
Ps = 1.6*10^4

//Sample Problem 18-4a
printf("**Sample Problem 18-4a**\n")
r = 12  //in meter
I = Ps/(2*%pi*r*L)
printf("The intensity of the sound at a distance %dm is equal to %fW/m^2\n", r, I)

//Sapmle Problem 18-4b
printf("\n**Sample Problem 18-4b**\n")
Ad = 2*10^-4  //in m^2
Pd = I*Ad
printf("The sound energy intercepted by the acoustic detector is %eW", Pd)