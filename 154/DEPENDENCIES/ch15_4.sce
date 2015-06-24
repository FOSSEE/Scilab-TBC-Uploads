clc
disp("Example 15.4")
printf("\n")

printf("Given")
disp("L1=0.1H L2=0.2H")
disp("i1=4A i2=10A")
L1=0.1;L2=0.2
i1=4;i2=10;
//The energy stored in coupled coils is
disp("W=(L1*i1^2)/2+(L2*i2^2)/2+M*i1*i2")

disp("a)")
M=0.1;
W=(L1*i1^2)/2+(L2*i2^2)/2+M*i1*i2;
printf("Total Energy in the coils=%3.2fJ\n",W);

disp("b)")
M=sqrt(2)/10;
W=(L1*i1^2)/2+(L2*i2^2)/2+M*i1*i2;
printf("Total Energy in the coils=%3.2fJ\n",W);

disp("c)")
M=-0.1;
W=(L1*i1^2)/2+(L2*i2^2)/2+M*i1*i2;
printf("Total Energy in the coils=%3.2fJ\n",W);

disp("a)")
M=-sqrt(2)/10;
W=(L1*i1^2)/2+(L2*i2^2)/2+M*i1*i2;
printf("Total Energy in the coils=%3.2fJ\n",W);



