//Fibre Optics : example 18-1 : pg(859)
n1=1.535;//refractive index of fibre optics
n2=1.490;//refractive index of cladding
x=(n1^2)-(n2^2);
y=sqrt(x);//numerical aperture
z=asind(y);//theta
printf("\nNA = sin(theta)in(max) = sqrt(n1^2-n2^2) = %.3f",y);
printf("\n(theta)in(max) = %.1f degrees",z);
