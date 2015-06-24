//To calculate the numerical aperture and acceptance angle
n1 = 1.48;    //refractive index of core
n2 = 1.45;    //refractive index of cladding
NA = sqrt(n1^2 - n2^2);     //numerical aperture 
printf("numerical aperture is %5.4f",NA);
alpha_i = asind(NA);      //angle of acceptance, degrees
deg = int(alpha_i);       //angle in degrees
t = 60*(alpha_i-deg);
mint = int(t);       //angle in minutes
printf("the angle of acceptance is %d degrees %d minutes",deg,mint);

//answer given in the book is wrong
