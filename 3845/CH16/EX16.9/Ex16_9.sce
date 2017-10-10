//Example 16.9
I=700;//Intensity of sunlight (W/m^2)
A=0.500;//Area of solar collector (m^2)
t=4;//Time (h)
t=t*60*60;//Time (s)
E=I*A*t;//Energy (J)
printf('a.Energy falling on solar collector = %0.2e J',E)
R_area=200;//Ratio of old area to new area
I_new=R_area*I;//New intensity after derivation (W/m^2)
printf('\nb.Intensity of concentrated sunlight = %0.2e W/m^2',I_new)
//Openstax - College Physics
//Download for free at http://cnx.org/content/col11406/latest
