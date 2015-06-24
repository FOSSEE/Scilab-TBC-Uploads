clc
//to calculate order when visible light of wavelength in the range 4000 to 7500 angstrom
//let E=(e+d)
E=1/4000 //in cm
lambda1=4*10^-5 
                        //wavelength in cm
lambda2=7.5*10^-5
n1=E*sin(%pi/2)/lambda1
n2=E*sin(%pi/2)/lambda2
disp("order when wavelength of 4000 angstrom is n1="+string(n1)+"unitless")
disp("order when wavelength of 7500 angstrom is n2="+string(n2)+"unitless")
