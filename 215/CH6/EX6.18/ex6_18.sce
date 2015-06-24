clc
//Example 6.18
//Verification of Reciprocity theorem
I=10
//From figure 6.61
disp('The current divides between the two parallel impedances')
//Let I2 be the current through 4 ohm 
I2=(10*5)/(4-%i*4+5)
//Let Vx be the voltage across -i4 ohm capacitive reactance
Vx=I2*(-%i*4)
[Vxmag Vxang]=polar(Vx)
printf("Vx=%3.2f(%3.2f deg)V \n",Vxmag,(Vxang*180)/%pi)
//To verify Reciprocity theorem remove the current source and place it parallel with -i4 ohm capacitive reactance
//From figure 6.62
//Let I1 be the current flowing through resistor of 5 ohm
I1=(10*(-%i*4))/(5+4-%i*4)
//let Vx1 be the deired output voltage across 5 ohm resistor
Vx1=I1*5
[Vx1mag Vx1ang]=polar(Vx1)
printf("Vx1=%3.2f(%3.2f deg)V \n",Vx1mag,(Vx1ang*180)/%pi)
//Comparing the values of Vx and Vx1
disp('Vx=Vx1')
disp('Hence Reciprocity theorem is verified')