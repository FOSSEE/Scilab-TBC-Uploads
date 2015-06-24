clc;
//Example 3.5
//Page no. 30
printf("Example 3.5 Page no. 30\n\n")
//determine potential energy of water 
// given height,mass of water,g
m=1
g=9.8
Z1=0//at ground level
Z2=10//at 10 m above from ground level
printf("m=%f kg\n g=%f m/s^2\n Z1=%f m\n Z2=%f m\n",m,g,Z1,Z2)
PE1=m*g*Z1//potential energy at ground level
PE2=m*g*Z2//potential energy at 10m height
PE= PE2-PE1
printf("PE1=%fJ\n PE2=%fJ\n PE=%fJ\n",PE1,PE2,PE)
