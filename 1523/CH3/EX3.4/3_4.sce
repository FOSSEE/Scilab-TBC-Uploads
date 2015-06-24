//Network Theorem 2
//pg no 3.
//example 3.4
disp("When 6-V source is acting alone:");
VAB1=6;
printf("VAB1 = %.2f V", VAB1);
disp("When 10-V source is acting alone:");
disp("Since the resistor of 5 ohm is shorted,the voltage across it is zero")
VAB2=10;
printf("VAB2= %.2f V", VAB2);
disp("When 5-A source is acting alone:");
disp("Due to short circuit in both the parts");
VAB3=0;
printf("VAB3 = %.2f V", VAB3);
disp("By superposition theorem:");
VAB=VAB1+VAB2+VAB3;
printf("\nVAB=VAB=VAB1+VAB2+VAB3= %.2f V", VAB);