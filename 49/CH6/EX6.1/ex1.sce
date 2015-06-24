//CHAPTER 6 _ PRESSURE AND SOUND MEASUREMENT
//Caption : MANOMETERS
// Example 1 // Page 329
D1=0.1   //('Enter the diameter of well =:')
D2=0.01    //('Enter the diameter of the tube =:')
g=9.81;
pho_air=1.23   //('Enter the density of air in kg/m^3 =:')
pho_liquid=1200  //('Enter the density of liquid in manometer =:')
h=1     //('Enter the height by which liquid decreases in smaller area arm when exposed to the nominal pressure of p2 =:')
// Let the pressure difference is represented by P=p1-p2
disp("The pressure difference is given by:")
disp("P=h*(1+((D2/D1)^2)*g*(pho_liquid-pho_air))")
P=h*(1+((D2/D1)^2)*g*(pho_liquid-pho_air))*10^-3;
printf('So the pressure difference is given by %1.2f kPa \n',P)


