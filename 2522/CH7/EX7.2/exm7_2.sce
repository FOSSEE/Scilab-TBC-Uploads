//page no 219
//example no 7.2
//LOADING 16-BIT NUMBER.
//working of LXI instruction.
clc;
disp('LXI H,2050H'); // loads HL register pair.
disp('L=50H'); // 50H in L register.
disp('H=20H'); //20H in H register pair.
disp('LXI instruction takes 3 bytes of memory and 10 clock periods.')
//working of MVI instruction.
disp('MVI H,20H');
disp('H=20H'); // load 20H in register H.
disp('MVI L,50H'); // load 50H in register L.
disp('L=50H');
disp('2 MVI instructions take 4 bytes of memory and 14 clock periods.')
