clc
//Example 11.4
//Calculate the Average power absorbed and average power supplied by source
//From figure 11.6
//By applying mesh analysis
I1mag=11.18;I1ang=-63.43;I2mag=7.071;I2ang=-45;R=2;Vleft=20;Vright=10;
//Current through 2 ohm resistor
printf("I1-I2=%d(%d ang) A \n",5,-90)
//Average power absorbed by resistor
PR=0.5*5^2*R
printf("Average power absorbed by resistor=%d W \n",PR)
//Power supplied by left source
Pleft=0.5*Vleft*I1mag*cos(0-I1ang*%pi/180)
//Power supplied by right source
Pright=0.5*Vright*I2mag*cos(0+I2ang*%pi/180)
printf("Power supplied by sources \t Pleft=%d W \t Pright=%3.1f W",Pleft,Pright);





