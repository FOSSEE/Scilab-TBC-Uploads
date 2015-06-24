//Fibre Optics : example 18-5 : pg(887)
b=565;//Line bit rate of fibre 1
c=3.5;//Cable dispersion of fibre 1
t=4;//Transmitter spectral width of fibre 1
b1=1130;//Line bit rate of fibre 2
c1=3.5;//Cable dispersion of fibre 2
t1=2;//Transmitter spectral width of fibre 2
x=440000;//assumed gaussian constant based on a 3-dB optical bandwidth using a FWHM pulse shape
L1=x/(b*c*t);//span length in km of fibre 1
L2=x/(b1*c1*t1);//span length in km of fibre 2
printf("\nL1 = %.1f km",L1);
printf("\nL2 = %.1f km",L2);