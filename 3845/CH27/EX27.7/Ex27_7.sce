//Example 27.7
lambda=650*10^-9;//Wavelength of red light (m)
n=1.333;//Index of refraction for soapy film
lambda_n=lambda/n;//Wavelength in the soapy film(m) 
tc1=1*lambda_n/4;
tc2=3*lambda_n/4;
tc3=5*lambda_n/4;//tc1, tc2, tc3 - thicknesses for constructive interference (m)
printf('a.The three smallest thicknesses for constructive interference = %0.1f nm, %0.1f nm, %0.1fnm',tc1/10^-9,tc2/10^-9,tc3/10^-9)
td1=0*lambda_n/2;
td2=1*lambda_n/2;
td3=2*lambda_n/2;//td1, td2, td3 - thicknesses for destructive interference (m)
printf('\nb.The three smallest thicknesses for destructive interference = %0.1f nm, %0.1f nm, %0.1fnm',td1/10^-9,td2/10^-9,td3/10^-9)
//Answers vary due to round off error
//Openstax - College Physics
//Download for free at http://cnx.org/content/col11406/latest
