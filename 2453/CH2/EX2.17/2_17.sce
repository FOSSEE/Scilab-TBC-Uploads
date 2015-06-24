//To calculate the interatomic spacing
h = 1;
k = 1;
l = 1;      //for (111) plane
theta = 30;    //glancing angle, degrees
n = 1;     //first order
x = sqrt(h^2+k^2+l^2);
lamda = 1.5418;     //wavelength of X-rays, A
lamda = lamda*10^-10;     //wavelength of X-rays, m
d = lamda/(2*sind(theta));
a = d*x;      //interatomic spacing, m
a = a*10^10;      //interatomic spacing, A
printf("the interatomic spacing is %5.3f A",a);
