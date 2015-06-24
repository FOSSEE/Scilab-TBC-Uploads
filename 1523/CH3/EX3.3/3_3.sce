//Network Theorem 2
//pg no 3.5
//example 3.3
disp("When 4-A source is acting alone:");
disp("By current-division formula :");
I1=4/(2+1);
printf("I1=4/(2+1) = %.2f A (down)", I1);
disp("When 3-A source is acting alone:");
disp("By current-division formula :");
I2=3*(2/(2+1));
printf("I2=3*(2/(2+1)) = %.2f A (down)", I2);
disp("When 1-A source is acting alone:");
disp("By current-division formula :");
I3=1*(2/(2+1));
printf("I3=1*(2/(2+1)) = %.2f A (down)", I3);
disp("By superposition theorem:");
I=I1+I2+I3;
printf("\nI=I1+I2+I3=1.33+2+0.66= %.2f A (down)", I);