//To calculate the spacing of crystal
V = 344;      //potential, V
lamda = 12.26/sqrt(V);      //de Broglie wavelength, armstrong
lamda_m = lamda*10^-10;     //de Broglie wavelength, m
n = 1;     //for 1st reflection maximum
theta = 60;     //glancing angle, degrees
d = n*lamda_m/(2*sind(theta));      //interatomic spacing, m
d = d*10^10;       //interatomic spacing, armstrong
printf("interatomic spacing of crystal is %5.4f armstrong",d); 
