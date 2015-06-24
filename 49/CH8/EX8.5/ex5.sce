//CHAPTER 8 _ TEMPERATURE MEASUREMENT
//Caption : PYROMETERS
// Example 5// Page 545

//(i)Optical Pyrometer
// Ta(K) is the actual temperature and Ti(K) is the indicated temperature 
TI=1200    //('Enter the indicated temperature in degree centigrade=:')
Ti=TI+273
disp("Ti=TI+273")
lamda=0.7*10^-6    //('Entering  the wavelength(in meters) at which intensities are compared')
epsilon=0.6        //('Entering  the emissivity of the body')
C2=0.014387     //('Entering the value of constant')
disp("Actual temperature is given by :")
disp("Ta=(Ti*C2)/(C2-lamda*Ti*log(epsilon));")
Ta=(Ti*C2)/(C2-lamda*Ti*log(epsilon));
ta=Ta-273;
printf('Actual temperature of the body is %d \n',ta)
//(ii) For radiation pyrometer
T=(epsilon*Ta^4)^(1/4);
ti=T-273;
printf('Indicated temperature in degree celsius of the total radiation pyrometer is %d degree cent \n',ti)
//To calculate error
Error1=Ta-Ti;
printf('Error using Optical Pyrometer is %d K \n',Error1)
Error2=Ta-T;
printf('Error using Radiation Pyrometer is %d K \n',Error2)






