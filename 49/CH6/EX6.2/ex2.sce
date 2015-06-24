//CHAPTER 6 _ PRESSURE AND SOUND MEASUREMENT
//Caption : MANOMETERS
// Example 2 // Page 329
pho_l=900  
disp("pho_l=900 ")  //('Enter the density of the fluid =:')
Pa= 500000 
disp("Pa= 500000 ")  //('Enter the air pressure =:')
t=298 
disp("t=298 ")   //('Air is at what temperature(in deg cent) =:')
R=287;
disp("R=287;")
g=9.81;
T=t+273;
disp("pho_a=Pa/(R*T);")
pho_a=Pa/(R*T);
printf('The density of air is %fd kg/m^3 \n',pho_a)
h=.2    //('Enter the difference in the height of the fluid in the manometer=:')
disp("Pres_diff=(g*h)*(pho_l-pho_a)")
Pres_diff=(g*h)*(pho_l-pho_a)*10^-3
printf('The differential pressure is %1.2f kPa\n',Pres_diff)

