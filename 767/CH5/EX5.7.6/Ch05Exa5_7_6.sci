// Scilab code Exa 5.7.6 : To calculate the scattering angle of X-rays  Page.no. 235 (2011)
E_s = 180; // Energy of the scattered X-rays, KeV
E_i = 200; // Energy of the incident X-rays, KeV
a = acosd(1-[{1/E_s-1/E_i}*511]); // 
A = round(a); // Scattering angle of X-rays, degree
printf("\n Scattering angle of X-rays: %d degree", A )
// Result
//         Scattering angle of X-rays: 44 degree 