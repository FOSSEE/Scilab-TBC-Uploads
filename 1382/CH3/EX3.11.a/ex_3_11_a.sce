// Example 3.11 (i): minimum power drain on the power supply 
clc, clear;
Pl=10; // power delivered to load in watt
eta1=80/100; // output transformer efficiency
eta=78.5/100; // efficiency of a class B push pull amplfier under optimum condition
Pout=Pl/eta1;
Pin=Pout/eta;
disp(Pout,"ac power output of amplifier (W) = ")
disp(Pin,"minimum power drain on the power supply (W) = ")
