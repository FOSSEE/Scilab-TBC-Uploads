//Example 15 Page No: 1.90
//given
sr=50e6;//volt/sec
rin=2;format(5);
vimax=10;//volt
//determine max frequency
vm=vimax*(1+rin);
freq1=sr/(2*3.14*vm);
disp('Max frequency = '+string(freq1/10^3)+' Khz');


