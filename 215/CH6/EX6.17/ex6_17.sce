clc
//Example 6.17
//Verification of Reciprocity theorem
I=20
//From figure 6.59
disp('The current divides between the two parallel impedances')
//Let I2 be the current through i5 ohm 
I2=(20*%i*(10+%i*5))/(10+%i*5+%i*5-%i*2)
//Let Vx be the voltage across -i2 ohm capacitive reactance
Vx=I2*(-%i*2)
[Vxmag Vxang]=polar(Vx)
printf("Vx=%3.2f(%3.2f deg)V \n",Vxmag,(Vxang*180)/%pi)
//To verify Reciprocity theorem remove the current source and place it parallel with -i2 ohm capacitive reactance
//From figure 6.60
//Let I2 be the current flowing through resistor of 10 ohm
I2=(20*%i*(-%i*2))/(10+%i*5+%i*5-%i*2)
//let Vx1 be the deired output voltage across 10 ohm resistor and i5 inductive reactance
Vx1=I2*(10+%i*5)
[Vx1mag Vx1ang]=polar(Vx1)
printf("Vx1=%3.2f(%3.2f deg)V \n",Vx1mag,(Vx1ang*180)/%pi)
//Comparing the values of Vx and Vx1
disp('Vx=Vx1')
disp('Hence Reciprocity theorem is verified')