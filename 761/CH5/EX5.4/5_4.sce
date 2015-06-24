clc;
//page no 182
//prob no. 5.4
//Class C amplifier with carrier o/p power of 100W with efficiency of 70% & with 100% modulation
Pc=100;eta=0.7;
//Determination of o/p power
Po=1.5*Pc;
disp('W',Po,'The o/p power with 100% modulation is');
//Determination of supply power
Ps=Po/eta;
disp('W',Ps,'The value of supply power is');
//Determination of power dissipated Pd
Pd=Ps-Po;
disp('W',Pd,'Power dissipated is');