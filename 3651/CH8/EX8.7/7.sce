//variable declaration
a=5;
n1=1.48;
delta=0.01;
V=25;

//Calculation
lamda=(%pi*(a*10**-6)*n1*sqrt(2*delta))/V   // Cutoff Wavelength

//Result
printf('Cutoff Wavellength =%0.3f micro m. \n',(lamda*10**7))
