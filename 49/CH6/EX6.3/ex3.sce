//CHAPTER 6 _ PRESSURE AND SOUND MEASUREMENT
//Caption : Elastic Transducers
// Example 3 // Page 337
Sa=1000
disp("Sa=1000")    //('Enter the sensitivity of LVDT =:')
//Properties of diaphragm
E=200*10^9   //('Enter the value of modulus of elasticity=:')
disp("E=200*10^9 ")
v=0.3  //('Enter the Poissons ratio=:')
disp("v=0.3 ")
d=0.2   //('Enter the diameter of diaphragm=:')
disp("d=0.2  ")
R=d*(1/2);
P_max=2*10^6  //('What is the maximum pressure?')
disp("P_max=2*10^6 ")
p=7800   //('What is the density of steel?')
disp("Thickness is given by:")
disp("t=(3*P_max*R^4*(1-v^4)/(4*E))^(1/4);")
t=(3*P_max*R^4*(1-v^4)/(4*E))^(1/4)
T=t*1000;
printf('Thickness is %1.1f mm\n',T)
//To calculate the lowest pressure in kPa which may be sensed by this instrument , resolution and the natural frequency of the diaphragm
y=.001   //('Enter  the l)east value of measurement=:')
p_min=(y*16*E*t^3)/(3*R^4*(1-v^2)*Sa)
printf('So the minimum pressure and resolution is %d Pa \n',p_min)
f=(10.21/R^2)*((E*t^2)/(12*(1-v^2)*p))^(1/2)
printf('The natural frequency of diaphragm is %fd Hz',f)




