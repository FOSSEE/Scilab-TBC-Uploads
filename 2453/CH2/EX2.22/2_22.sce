//To calculate the cube edge
n = 1;    //first order
h = 1;
k = 1;
l = 1;     //for (111) plane
lamda = 1.54;    //wavelength, A.U
lamda_m = lamda*10^-10;      //wavelength, m
theta = 19.2;      //Bragg's angle, degrees
d = n*lamda_m/(2*sind(theta));     //interplanar spacing, m
a = d*sqrt(h^2+k^2+l^2);      //cube edge, m
a_AU = a*10^10;      //cube edge, A.U
printf("the cube edge is %5.3f A.U",a_AU);

