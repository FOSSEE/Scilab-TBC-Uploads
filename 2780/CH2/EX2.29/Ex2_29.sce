clc
//to calculate diameter 
lambda1=6*10^-5 //wavelength in cm
lambda2=4.5*10^-5 //wavelength in cm
R=90 //radius of curvature of the curved surface in cm
//Dn^2=4nRlambda1 -------eq(1)
//Dn+1^2=4(n+1)Rlambda2-------eq(2)
//the nth dark ring due to lambda1 coincides with (n+1)th dark ring due to lambda2
//from eq(1) and eq(2)-4nRlambda1=4(n+1)Rlambda2
// we get,
n=lambda2/(lambda1-lambda2)
Dn=sqrt(4*n*R*lambda1)
disp("the diameter of nth dark ring for lambda1 is Dn="+string(Dn)+"cm")
