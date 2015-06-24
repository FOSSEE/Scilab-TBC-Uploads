
//Example 6-19//
//reduce expression using k-map by finding POS//
clc
//clears the window//
clear
//clears all existing variables//
//Mapping the expression//
disp('       C''D'' C''D CD CD'' ')
disp('A''B''   0     0    0  1 ')
disp('AB''     1     0    0  0 ')
disp('AB       1     1    0  0 ')
disp('AB''     1     1    1  0 ')
disp(' From the map, low outputs for 0,1,3,5,6,7,10,14,15')
//given logic equation//
c=[0 0 0 0;0 0 0 1;0 0 1 1;0 1 0 1;0 1 1 0;0 1 1 1;1 0 1 0;1 1 1 0;1 1 1 1]
disp(c)
for i=1: 9
    if c(i,1)==1 then
       d(i,1)='A'''
   else
       d(i,1)='A'
    end
    if c(i,2)==1 then
       d(i,2)='B'''
   else
       d(i,2)='B'
    end
     if c(i,3)==1 then
       d(i,3)='C'''
   else
       d(i,3)='C'
    end
    if c(i,4)==1 then
       d(i,4)='D'''
   else
       d(i,4)=' D '
    end
end
disp(' evaluating expression from truth table and map')
l=strcat([ d(1,1),d(1,2),d(1,3),d(1,4)])
m=strcat([ d(2,1),d(2,2),d(2,3),d(2,4)])
n=strcat([ d(3,1),d(3,2),d(3,3),d(3,4)])
o=strcat([ d(4,1),d(4,2),d(4,3),d(4,4)])
x=strcat([l"+",m"+",n"+",o ])
disp('the sum of product expression is:')
disp(x)
disp('Reading the SOP form')
disp(' A''B''CD''+BC''D''+AB''D+AC'' ')
//Expression is displayed//
disp('now reducing expression using boolean algebra from POS')
disp(' (A+B+C)(A''+C''+D)(A+D'')(B''+C'') ')
disp('POS has 14 inputs,SOP has 16 inputs')
disp('Therefore,POS form is less expensive')
