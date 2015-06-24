//Example 6-6//
//map C=A''B''+AB''//
clc
//clears the console//
clear
//clears all existing variables//
//Mapping the expression//
disp('    B'' B ')
disp('A'' 1   0 ')
disp('A   1   0  ')
disp(' From the map, high outputs for 0 and 2 ')
a=[0 0 ; 1 0]
disp(a)
for i=1: 2
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
end
m=strcat([b(1,1),b(1,2)])
n=strcat([b(2,1),b(2,2)])
disp(' evaluating expression from truth table and map ')
x=strcat([m"+",n]);
disp(x)
//Expression is displayed//
