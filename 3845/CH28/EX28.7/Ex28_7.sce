//Example 28.7
V=12;//Voltage (V)
c=3*10^8;//Speed of light (m/s)
It=600;//Battery rating (A.h)
delta_m=(It*3600)*V/c^2;//Increase in rest mass, convert hours to seconds (kg)
printf('a.Increase in rest mass = %0.2e kg',delta_m)
m=20;//Mass of the battery (kg)
percent_increase=delta_m/m*100;//Percent increase in the mass of the battery
printf('\nb.Percent increase of the mass of the battery = %0.2e%%',percent_increase)
//Openstax - College Physics
//Download for free at http://cnx.org/content/col11406/latest
