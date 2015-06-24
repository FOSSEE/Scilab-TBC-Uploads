//Network Theorem 2
//pg no 3.4
//example 3.2
disp("When 4-A source is acting alone:");
disp("By current-division formula :");
I1=3.33*(3.53/(6+3.53));
printf("I1=3.33*(3.53/(6+3.53)) = %.2f A (down)", I1);
disp("When 10-V source is acting alone:");
disp("By current-division formula :");
I2=0.833*(3.53/(6+3.53));
printf("I2=0.833*(3.53/(6+3.53))= %.2f A (up)", I2);
disp("When 3-A source is acting alone:");
disp("By current-division formula :");
I3=3*(3.53/(6+3.53));
printf("I3=3*(3.53/(6+3.53))= %.2f A (down)", I3);
disp("By superposition theorem:");
I=I1-I2+I3;
printf("\nI=I1-I2+I3=1.23-0.31+1.11= %.2f A (down)", I);