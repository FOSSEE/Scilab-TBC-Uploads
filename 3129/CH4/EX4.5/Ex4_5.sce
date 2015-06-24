//Finding the current sharing by two parallel MOSFETs
//Example 4.5(Page No- 151) 
clc
clear
//given data
It = 20;//A
Vds1 = 2.5;//V
Vds2 = 3;//V

//part(a)
Rs1 = 0.3;//Ohm
Rs2 = 0.2;//Ohm
Id1 = (Vds2-Vds1+(It*Rs2))/(Rs1+Rs2);
Id1_per = (Id1*100)/It;
printf('(a)\t Drain current of transistor 1: %dA or %d%%',Id1,Id1_per);
Id2 = It - Id1;
Id2_per = (Id2*100)/It;
printf('\n \t drain Current of transistor 2: %dA or %d%%',Id2,Id2_per);
del_I = abs(Id1_per - Id2_per);
printf('\n \t Difference in current sharing :%d%%',del_I);

//part(b)
//printf('\n Part (b):-')
Rs1 = 0.5;//Ohm
Rs2 = 0.5;//Ohm
Id1 = (Vds2-Vds1+(It*Rs2))/(Rs1+Rs2);
Id1_per = (Id1*100)/It;
printf('\n (b)\t Drain current of transistor 1: %.1fA or %.1f%%',Id1,Id1_per);
Id2 = It - Id1;
Id2_per = (Id2*100)/It;
printf('\n \t drain Current of transistor 2: %.1fA or %2.1f%%',Id2,Id2_per);
del_I = abs(Id1_per - Id2_per);
printf('\n \t Difference in current sharing :%d%%',del_I);

