//Example 2.4
//Calculate the power dissipated within the wire
//From figure 2.27
disp("Given")
disp("Total length of the wire is 4000 feet")
disp("Current drawn by lamp is 100A")
//Considering American Wire Gauge system(AWG)
//Referring Table 2.4
disp("4AWG=0.2485ohms/1000ft")
l=4000; i=100 ; rl=0.2485/1000;
//Let R be the wire resistance
R=l*rl;
//Let p be the power dissipated within the wire
disp("p=i^2*R")
p=i^2*R
printf("Power dissipated within the wire=%dW\n",p)
