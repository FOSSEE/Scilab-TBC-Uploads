mu0=4*%pi*10^-7;// defining permeability of free space
epsilon0=8.85*10^-12;// defining permittivity of free space
z0=sqrt(mu0/epsilon0);// calculating intrinsic impedance
epsilonr=4.6;// defining relative permittivity
vp=1/sqrt(mu0*epsilon0*epsilonr);// calculating phase velocity
f1=30*10^6;
f2=3*10^9;
lambda1=vp/(f1);
lambda2=vp/(f2);
disp('metre',lambda1,'Wavelength corresponding to f1');//displaying wavelengths
disp('metre',lambda2,"Wavelength corresponding to f2");//displaying wavelengths