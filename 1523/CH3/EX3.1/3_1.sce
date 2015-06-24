//Network Theorem 2
//pg no 3.2
//example 3.1
disp("When 10-V source is acting alone:");
disp("By current-division formula :");
I1=10*(0.87/(10+0.87));
printf("I1=10*(0.87/(10+0.87))= %.2f A (down)", I1);
disp("When 4 A source is acting alone:");
disp("By current-division formula :");
I2=2.86*(0.875/(10+0.875));
printf("I2=2.86*(0.875/(10+0.875))= %.2f A (down)", I2);
disp("By superposition theorem:");
I=I1+I2;
printf("\nI=I1+I2=0.8+0.23= %.2f A (down)", I);
