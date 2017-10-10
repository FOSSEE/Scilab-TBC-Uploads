//Chapter-22,Example 5,Page 502
clc();
close();

//since output current of transistor is 96% of the input current

alpha = 96/100     //current gain  =  output current/input current

Rout= 2000    //output resistance

Rin= 20    //input resistance

R_gain= Rout/Rin   //resistance gain

//According to Ohm's law  V=I*R

volt_gain = R_gain*alpha

printf("the voltage gain = %.f",volt_gain)

//voltage gain has no unit 
//printing mistake in textbook
