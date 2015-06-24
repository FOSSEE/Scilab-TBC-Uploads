
//To calculate the glancing angle
n = 2;     //second order
h = 1;
k = 1;
l = 0;   //plane (110)
lamda = 0.065;     //wavelength of X-rays, nm
lamda_m = lamda*10^-9;    //wavelength of X-rays, m
a = 0.26;      //axial length, nm
a_m = a*10^-9;    //axial length, m
x = sqrt(h^2+k^2+l^2);
theta = asind(n*lamda_m*x/(2*a_m));       //glancing angle, degrees
deg = int(theta);       //glancing angle, degrees
t = 60*(theta-deg);
mint = int(t);         //glancing angle, minutes
printf("the glancing angle is %d degrees %d minutes",deg,mint);
