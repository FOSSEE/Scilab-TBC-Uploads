clc
//to calculate atomic number of the element
//equation for balmer series in hydrogen spectrum is 1/lambda=R*((1/2^2)-(1/n^2))
//for series limit n=infinity ,R=4/lambdainfinity i.e. R=4/364.6nm
//X-ray wavelength of K series is 1/lambda=R*(z-1)^2*((1/1^2)-(1/n^2))
lambda=0.1*10^-9
R=4/(364.6*10^-9)
//for n=infinity ,minimum wavelength of k series is given by
z=sqrt(1/(lambda*R))+1
disp("atomic number is z="+string(z)+"unitless")
