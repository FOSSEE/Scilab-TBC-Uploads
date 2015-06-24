//CHAPTER 8 _ TEMPERATURE MEASUREMENT
//Caption : ELECTRICAL- RESISTANCE SENSORS
// Example 3 // Page 517
s =0.2      //('enter the sensitivity =:')
d=0.4*10^-3
A=%pi*(d^2)/4;
// R=pho *l/A 
R=100
pho=0.8*10^-3;
l=(R*A)/pho;

printf('Length corresponding to resistance 100 ohm and diameter 0.4mm is %fd m\n',l)
d=2*10^-3
A=%pi*(d^2)/4;
R=100
pho=0.8*10^-3;
l=(R*A)/pho;
printf('Length corresponding to resistance 100 ohm and diameter 2mm is %1.2f m\n',l)
// The above lengths of wire indicate that their diameters should be very small so reasonable lengths can be used in practical applications .
// Let resistance at 50deg cent be R1 and at 100 deg cent be R2
t=-50       //('Enter the temperture at which resistance has to be calculated = :')
R1= R+s*(t-20);
printf('Resistance at temperature %d is %f ohm \n',t,R1)
t2=100      //('Enter the temperture at which resistance has to be calculated = :')
R2= R+s*(t2-20);
printf('Resistance at temperature %d is %f ohm\n ',t2,R2)












