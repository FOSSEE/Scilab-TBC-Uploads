// Example 3.11 (ii): minimum average power dissipation
Pl=10; // power delivered to load in watt
eta1=80/100; // output transformer efficiency
eta=78.5/100; // efficiency of a class B push pull amplfier under optimum condition
Pout=Pl/eta1;
Pin=Pout/eta;
Pd=Pin-Pout;
Pd1=Pd/2;
disp(Pout,"ac power output of amplifier (W) = ")
disp(Pin,"minimum power drain on the power supply for dc (W) = ")
disp(Pd,"minimum average power dissipation (W) = ")
disp(Pd1," minimum average power dissipation rating required for each transistor (W) = ")
