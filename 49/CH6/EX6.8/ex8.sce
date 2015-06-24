//CHAPTER 6 _ PRESSURE AND SOUND MEASUREMENT
//Caption : Knudsen Gage
// Example 8 // Page 363
disp("Td=40")
disp("Tv=300")
disp("p=2*10^-6")
Td=40   //('enter the temperature difference=:')
Tv=300 //('enter the gas temperature at which the force has to be calculated=:')
p=2*10^-6   //('enter the pressure(in m of Hg)=:')
pa=p*13600*9.81;
k=4*10^-4;    // knudsen constant
F=(pa*Td)/(k*Tv);
printf('So the  required force is %1.1f N',F)

