//page no 224
//example no 7.5
// INCREMENT A NUMBER.
clc;
disp('LXI B,2050H'); //loads the data 2050H in BC register pair.
disp('B=20H   C=50H');
B=20;
C=50;
disp('INX B');
C=C+1;
printf('B= %d C= %d \n',B,C);
disp('The contents of BC register pair will be 2051H');
disp('INR B');
B=B+1;
printf('B= %d \n',B);
disp('INR C');
C=50;
C=C+1;
printf('C= %d \n',C);
disp('The contents of BC register pair will be 2151H');
