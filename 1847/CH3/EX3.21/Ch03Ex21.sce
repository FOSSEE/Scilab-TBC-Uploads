// Scilab Code Ex3.21:: Page-3.34 (2009)
clc; clear;
a = 0.2;  // Slit width, mm
b = 0.8;   // Distance between slits, mm
p = [1 2 3 4];      // Orders of pth diffraction maxima
// As diffraction of pth diffraction maxima, a*sin(theta)=p*lambda --- (i)
// and that of nth diffraction maxima, (a+b)*sin(theta)=n*lambda --- (ii)
// Dividing (ii) by (i), we have
// (a+b)/a = n/p, solving for n
n = (a+b)/a*p;  // Orders of nth diffraction maxima

printf("\nThe missing orders of spectra in diffraction maxima, n = %d, %d, %d, %d,...", n(1), n(2), n(3), n(4));


// Result 
// The missing orders of spectra in diffraction maxima, n = 5, 10, 15, 20,... 
