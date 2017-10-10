//Example 30.1
n_f=2;//For Balmer series
n_i=4;//For second line of Balmer series
R=1.097*10^7;//Rydberg constant (m^-1)
lambda=1/[R*(1/n_f^2-1/n_i^2)];//Wavelength equation (m)
printf('a.Wavelength corresponding to second line of Balmer series = %0.1f nm',lambda*10^9)
m=1;//Order of interference
theta=15;//Angle from the original beam direction (deg)
d=m*lambda/sind(theta);
printf('\nb.Distance between slits = %0.2e m',d)
//Answer varies due to round off error
//Openstax - College Physics
//Download for free at http://cnx.org/content/col11406/latest
