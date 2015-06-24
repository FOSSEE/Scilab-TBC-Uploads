//Basic Circuit Concepts
//pg no-1.13
//example 1.6
I1=20/15;
printf("I1=2/5= %2f Ampere", I1)
I2=15/10;
printf("\nI2=4/8= %2f Ampere", I2)
disp("Voltage between points A and B = VAB = VA-VB");
disp("Writing KVL equations for the path A to B:");//Writing KVL equations for the path A to B
disp("VA - 5*I1 - 5 - 15 + 6*I2 - VB = 0");
disp("VA - VB = 5*1.33 + 5 + 15 + 6*1.5");
VAB=(5*1.33)+5+15-(6*1.5);
printf("VAB = %.2f Volt", VAB)