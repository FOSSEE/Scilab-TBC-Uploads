//Example 17.2
v_w=331;//Speed of sound in air at 0 deg C (m/s)
rho=1.29;//Density of air (kg/m^3)
delta_p=0.656;//Pressure amplitude (Pa)
I=delta_p^2/(2*rho*v_w);//Intensity (W/m^2)
I_0=10^-12;//Threshold intensity at 1000 Hz (W/m^2) 
Beta=10*log10(I/I_0);//Sound intensity level (dB)
printf('Sound intensity level = %0.1f dB',Beta)
//Openstax - College Physics
//Download for free at http://cnx.org/content/col11406/latest
