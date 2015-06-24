clc
//to calculate which spectral line in 5th order will overlap with 4th order line of 5890 angstrom
//the grating equation for principal maxima is (e+d)*sin theta =n*lambda
n1=5 
                //order of spectrum 
n2=4
lambda2=5890*10^-8 //wavelength of 4th order spectrum in cm
//(e+d)*sin theta=5*lambda-------------eq(1)
//(e+d)*sin theta=4*5890*10^-8-----------------eq(2)
//from eq(1) and eq(2) ,we get
lambda1=n2*lambda2/n1
disp("wavelength of 5th order spectrum is lambda1="+string(lambda1)+"cm")
