//To calculate the wavelength of X-rays and maximum order of diffraction possible
d = 0.282;     //lattice spacing, nm
n = 1;     //first order
theta = 8+(35*0.0166666667);      //glancing angle in degrees
d = d*10^-9;      //lattice spacing, m
lamda = 2*d*sind(theta)/n;     //wavelength of X-rays, m
lamda_nm = lamda*10^9;     //wavelength of X-rays, nm
theeta = 90;     //maximum value possible in degrees
n1 = 2*d*sind(theeta)/lamda;       //maximum order of diffraction possible
printf("wavelength of X-rays is %5.4f nm",lamda_nm);
printf("maximum order of diffraction possible is %d",n1);
