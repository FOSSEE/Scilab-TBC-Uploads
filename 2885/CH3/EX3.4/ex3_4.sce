//determine ac resistance of silicon diode
clear;
clc;
//soltion
//given

//At Id =10mA
Id=10;//mA
rf=25/Id;
printf("The ac resistance of the diode is(At Id= 10mA) %.1f Ω\n",rf)

//At Id =20mA
Id=20;//mA
rf=25/Id;
printf("The ac resistance of the diode is(At Id= 20mA) %.2f Ω",rf)
