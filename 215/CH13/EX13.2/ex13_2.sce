clc
//Example 13.2
disp('Given')
disp('Input voltage is 10V')
Viamp=10
//From figure 13.7
//Writing the left mesh equations
disp('(1+10i)*I1-90i*I2=10')
//Writing the right mesh equations 
disp('(400+1000i)*I2-90i*I1=0')
i=%i
A=[1+10*i -90*i;-90*i 400+1000*i]
i2mat=[1+10*i 10; -90*i 0] 
//Find i2 
i2=det(i2mat)/det(A)
[mag Theta]=polar(i2)
Theta=(Theta*180)/%pi
//The value of resistor is 400 ohm
R=400;
//Let V=V2/V1
Vamp=R*mag/Viamp
printf("Ratio of output voltage to input is %3.2f with angle %3.2f degrees",Vamp,Theta);