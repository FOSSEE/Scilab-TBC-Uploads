errcatch(-1,"stop");mode(2);//Chapter 30
clc
//Example 3
//given
m1=2.014102 // mass of deuterium in atomic mass unit
m2=3.016049 //mass of tritium in atomic mass unit
m3=1.007825 // mass of hydrogen in atomic mass unit
//referring to the deuterium-deuterium reaction
//mass before reaction
M1=2*m1
//mass after reaction
M2=m2+m3
//excessive mass
m=M1-M2
//converting mass into energy
//1 u = 931.494 Mev
E=m*931.494
disp(E," Energy release in deuterium-deuterium reaction in Mev is")

exit();
