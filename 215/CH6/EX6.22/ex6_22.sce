clc
//Example 6.22
//Writing KVL for the circuit
disp('10*i=30')
//On solving
i=3;R=10;V1=25;V2=5;
printf("Power absorbed by 10 ohm resistor is %d W \n",i^2*R)
printf("Power delivered by 25 V source is %d W \n",V1*i)
printf("Power delivered by 5 V source is %d W \n",V2*i)
//Let P be the total power
P=i^2*R-(V1*i+V2*i)
if P==0 then
    disp('Tellegen theorem is valid')
else
    disp('Tellegen theorem is not valid')
end