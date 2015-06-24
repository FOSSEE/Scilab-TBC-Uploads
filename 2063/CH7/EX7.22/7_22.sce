clc
clear
//Input data
B=32;//Brake horse power in kW with all cylinders working
B1=21.6;//BHP with number 1 cylinder cut out in kW
B2=22.3;//BHP with number 2 cylinder cut out in kW
B3=22.5;//BHP with number 3 cylinder cut out in kW
B4=23;//BHP with number 4 cylinder cut out in kW

//Calculations
I1=B-B1;//Indicated horse power of number 1 cylinder in kW
I2=B-B2;//IHP of number 2 cylinder in kW
I3=B-B3;//IHP of number 3 cylinder in kW
I4=B-B4;//IHP of number 4 cylinder in kW
I=I1+I2+I3+I4;//Total IHP of the engine in kW
nm=(B/I)*100;//Mechanical efficiency in percent

//Output
printf('(a)The IHP of the engine is %3.1f kW\n (b)Mechanical efficiency is %3.1f percent',I,nm)
