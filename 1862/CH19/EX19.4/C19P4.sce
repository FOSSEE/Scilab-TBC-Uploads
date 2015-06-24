clear
clc
//to find speed of sound

// GIVEN:
//refer figure 19-8 from page no. 436
//frequeny
f = 1080//in Hz
//distances of water level at resonance
x1 = 6.5//in cm
x2 = 22.2//in cm
x3 = 37.7//in cm

// SOLUTION
//using equation of sound wave for resonance
//from first two resonances
half_lambda = x2-x1//in cm
//from second and third resonance
halflambda = x3-x2//in cm
//average of both lambda values
half_lambda1 = (half_lambda+halflambda)/2//in cm
//wavelength of sound wave
lambda = 2*(half_lambda1)//in cm
//speed of sound
v = (lambda*10^-2)*f//in m/s //taking lambda in meters
v = round(v)

printf ("\n\n From first two resonances half_lambda = \n\n %.1f cm ",half_lambda)
printf ("\n\n From second and third resonance halflambda = \n\n %.1f cm ",halflambda)
printf ("\n\n Wavelength of sound wave lambda = \n\n %.1f cm ",lambda)
printf ("\n\n Speed of sound v = \n\n %3i m/s ",v)
