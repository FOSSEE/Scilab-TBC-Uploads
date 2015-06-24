//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear; 
//example 18.13w
//calculation angle of minimum deviation for equilateral prism of silicate flint glass from known vlue of wavelength

//given data
A=60; //angle of prism(in degree)
mu1=1.66; //refractive index of silicate flint glass for 400nm wavelength
mu2=1.61; //refractive index of silicate flint glass for 700nm wavelength

//calculation
//mu=sind((A+deltam)/2)/sind(A/2)    relation between refractive index and angle of minimum deviation by prism
deltam1=2*((asind(mu1*sind(A/2)))-30);
deltam2=2*((asind(mu2*sind(A/2)))-30);

disp(deltam1,'minimum angle of deviation(in degree) for 400nm wavelength in equilateral prism of silicate flint glass is');
disp(deltam2,'minimum angle of deviation(in degree) for 700nm wavelength in equilateral prism of silicate flint glass is');
