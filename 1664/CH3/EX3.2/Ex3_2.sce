
//Example No.3.2.
// Page No.98.
//To calculate numerical aperture and acceptance angle.
clc;clear;
n1 = 1.54;//Refractive index of core.
n2 = 1.5;// Refractive index of cladding.
no = 1;
NA = sqroot((n1^(2))-(n2^(2)));//Numerical Aperture.
printf("\nThe numerical aperture of the fibre is %.4f",NA);
t = asind(NA/no);// Acceptance angle.
printf("\nThe acceptance angle of the fibre is %.4f degree",t);
