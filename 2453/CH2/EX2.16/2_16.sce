//To calculate the highest order for which Bragg's reflection can be seen
lamda = 1.5;      //wavelength, A.U
d = 1.6;      //interplanar spacing, A.U
theta = 90;     //maximum glancing angle possible, degrees
n = 2*d*sind(theta)/lamda;      //maximum possible diffraction order
printf("maximum possible diffraction order is %d",n);
