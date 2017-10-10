//Example 27.3
d=1*10^-2/10000;//Distance between slits (m)
m=1;//First-order diffraction
lambda_V=380*10^-9;//Wavelength of violet light (m)
theta_V=asind(m*lambda_V/d);//Diffraction angle for violet light (deg)
printf('a.Angle for first-order diffraction for violet light = %0.2f deg',theta_V)
lambda_R=760*10^-9;//Wavelength of red light (m)
theta_R=asind(m*lambda_R/d);//Diffraction angle for red light (deg)
printf('\n  Angle for first-order diffraction for red light = %0.2f deg',theta_R)
x=2;//Distance between screen and grating (m)
y_V=x*tand(theta_V);//Lateral distance between violet light on the screen and the original beam direction (m)
y_R=x*tand(theta_R);//Lateral distance between red light on the screen and the original beam direction (m)
printf('\nb.Distance between the red and violet ends of the rainbow = %0.2f m',y_R-y_V)
//Openstax - College Physics
//Download for free at http://cnx.org/content/col11406/latest
