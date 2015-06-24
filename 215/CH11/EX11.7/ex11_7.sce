clc
//Example 11.7
//Calculate the Average power
printf("Given")
disp('Resistor value is 4 ohm, i2=2*cos(10t)-3*cos(10t) A')
disp('On solving we get i2=-cos(10t)')
R=4;im=-1
//Let P be the average power delievered
P=0.5*im^2*R
printf("Average power=%d W",P)