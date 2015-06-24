//To calculate the glancing angle
d100 = 0.28;     //lattice constant, nm
h = 1;
k = 1;
l = 0;      //for (110) plane
n = 2;      //second order
lamda = 0.071;     //wavelength of X-rays, nm
lamda_m = lamda*10^-9;     //wavelength of X-rays, m
d110 = d100/sqrt(h^2+k^2+l^2);     //interatomic spacing. nm
d110 = d110*10^-9;      //interatomic spacing. m
theta = asind(n*lamda_m/(2*d110));
printf("the glancing angle is %d degrees",theta);
