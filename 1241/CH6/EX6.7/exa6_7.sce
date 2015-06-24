//Example 6-7//
//Map X=ABC+AB''C+AB''C''//
clc
//clears the console//
clear
//clears all existing variables//
//Mapping the expression//
disp('    B''C'' B''C BC BC'' ')
disp('A''   0     0    0  0 ')
disp('A     1     1    1  0 ')
disp(' From the map, high outputs for 4,5 and 7 ')
a=[1 0 0 ; 1 0 1 ; 1 1 1]
disp(a)
for i=1: 3
    if a(i,1)==1 then
       b(i,1)='A'
   else
       b(i,1)='A'''
    end
    if a(i,2)==1 then
       b(i,2)='B'
   else
       b(i,2)='B'''
    end
     if a(i,3)==1 then
       b(i,3)='C'
   else
       b(i,3)='C'''
    end
end
disp(' evaluating expression from truth table and map ')
l=strcat([ b(1,1),b(1,2),b(1,3)])
m=strcat([ b(2,1),b(2,2),b(2,3)])
n=strcat([ b(3,1),b(3,2),b(3,3)])
x=strcat([l"+",m"+",n ])
disp(x)
//Expression is displayed//
