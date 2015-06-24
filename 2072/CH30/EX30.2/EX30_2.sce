//Chapter 30
clc
//Example 2
//given
Q=208 //disintegration energy per event in Mev
m=1*10^3 //mass of uranium
A=235 //mass number or uranium in g/mol
a=6.02*10^23 //avagadro number nuclei/mol
N=(a/A)*m //nuclei
E=N*Q
P=E*4.45*10^-20
disp(E,"Disintegration energy in Mev is")
disp(P,"or in KWh")

