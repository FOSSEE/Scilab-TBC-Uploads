//To calculate the interplanar spacing for the planes
h1 = 1;
k1 = 1;
l1 = 0;     //for (110) plane
h2 = 2;
k2 = 1;
l2 = 2;     //for (212) plane
r = 0.1278;      //atomic radius, nm
r = r*10^-9;     //atomic radius, m 
x1 = sqrt(h1^2+k1^2+l1^2);
a = 4*r/x1;     //nearest neighbouring distance, m
a = a*10^9;     //nearest neighbouring distance, nm
d_110 = a/x1;    //interplanar spacing for (110), nm
x2 = sqrt(h2^2+k2^2+l2^2);
d_212 = a/x2;    //interplanar spacing for (212), nm
printf("interplanar spacing for (110) is %5.4f nm",d_110);
printf("interplanar spacing for (212) is %5.4f nm",d_212);
