// Scilab Code Ex1.6 :  Page-25 (2010)
lambda1 = 400e-09;    // Lower limit of wavelength of visible region, m
lambda2 = 700e-09;    // Upper limit of wavelength of visible region, m
c = 3e+08;    // Speed of light in vacuum, m/s
f1 = c/lambda1;    // Upper limit of frequency of visible region, m
f2 = c/lambda2;    // Lower limit of frequency of visible region, m
printf("\nThe frequency equivalent of %3g nm to %3g nm is %3.1e Hz to %3.1e Hz", lambda1/1e-09, lambda2/1e-09, f1, f2);

// Result 
// The frequency equivalent of 400 nm to 700 nm is 7.5e+014 Hz to 4.3e+014 Hz 
