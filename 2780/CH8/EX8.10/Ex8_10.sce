clc
//to calculate wavelength of second X-ray beam
//from bragg's law
//lambda=(d*sin(%pi/3))/n        eq(1)
//it is given that,theta=60,n=3,lambda=1.97 angstrom
//from eq(1) we get,2*d*sin60degree=3*0.97               eq(2)
//let lambda' be the second X-ray beam 
//we get 2*d'*sin theta'=n'*lambda'                   eq(3)
//from eq(2) and eq(3),we get
lambda1=sin(%pi/6)*3*0.97/sin(%pi/3)   //where lambda1=lambda'
disp("wavelength of X-ray is lambda1="+string(lambda1)+"angstrom")
