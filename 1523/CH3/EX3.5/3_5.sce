//Network Theorem 2
//pg no 3.7
//example 3.5
disp("When 5-A source is acting alone:");
disp("By current-division formula :");
I1=5*(2/(2+4));
printf("I1=5*(2/(2+4)) = %.2f A (down)", I1);
disp("When 2-A source is acting alone:");
disp("By current-division formula :");
I2=2*(2/(2+4));
printf("I2=2*(2/(2+4)) = %.2f A (down)", I2);
disp("When 6-V source is acting alone:");
disp("Applying KVL to the mesh");
disp("-2*I3-6-4*I3=0");
disp("I3=-1");
I3=-1;
printf("I3=-1 A= %.2f A (down)", I3);
disp("By superposition theorem:");
I=I1+I2+I3;
printf("\nI=I1+I2+I3=1.67+0.67-1= %.2f A (down)", I);