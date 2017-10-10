//Example 17.1
T=30;//Temperature (C)
T=T+273;//Temperature (K)
v_w=331*sqrt(T/273);//Speed of sound in air at sea level(m/s)
f_min=20;//Minimum frequency (Hz)
f_max=20000;//Maximum frequency (Hz)
lambda_max=v_w/f_min;//Maximum wavelength (m)
printf('Maximum wavelength = %0.0f m',lambda_max)//Restricting answer to two significant figures
lambda_min=v_w/f_max;//Minimum wavelength (m)
printf('\nMinimum wavelength = %0.1f cm',lambda_min*100)
//The answer varies due to round off error
//Openstax - College Physics
//Download for free at http://cnx.org/content/col11406/latest
