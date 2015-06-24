//Sample Problem 9-2
printf("**Sample Problem 9-2**\n")
R = poly(0, 'R')
//Mass is proportinal to area
Aw = %pi* (2*R)^2
Ac = %pi* R^2
//& the x-co-ordinate of the masses
CMw = 0
CMc = -R
CMf = pdiv((Aw*CMw - Ac*CMc), (Aw - Ac))
printf("The CM is located at a distace of %fR to the right of the center", horner(CMf, 1))