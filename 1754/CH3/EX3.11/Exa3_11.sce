//Exa 3.11
clc;
clear;
close;
//Given data : 
Po_dc=10;//in watt
Po_ac=3.5;//in watt
//Part (i) :
ETAcollector=Po_ac/Po_dc;//unitless
ETAcollector=ETAcollector*100;//collector efficiency in %
disp(ETAcollector,"Collector Efficiency(in %) : ");
//Part (ii)
disp(Po_dc,"Zero signal condition represents maximum power loss. Therefore, all the 10 W power is dissipated by it. Hence Powe Rating of transistor in Watt : ")