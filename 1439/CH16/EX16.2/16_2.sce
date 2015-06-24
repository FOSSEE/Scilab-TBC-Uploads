clc
//initialisation of variables
wl= 4500 //A
c= 3*10^10 //cm/sec
//CALCULATIONS
l= wl*10^-8
l1= wl*10^-1
f= 1/l
f1= c/l
//RESULTS
printf ('wavelength in centimetres = %.1e cm',l)
printf ('\n wavelength in micrometres = %.1e cm',l1)
printf ('\n frequency of bluelight = %.2e sec^-1',f1)
printf ('\n wave number = %.2e cm^-1',f)
