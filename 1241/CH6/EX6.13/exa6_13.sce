//Example 6-13//
//reduce expression using k-map//
clc
//clears the console//
clear
//clears all existing variables//
//Mapping the expression//
disp('    B''C'' B''C BC BC'' ')
disp('A''   1     0    1  1 ')
disp('A     1     1    1  0 ')
disp(' From the map, high outputs for 0,2,3,4,5 and 7 ')
a=[0 0 0 ; 0 1 0 ; 0 1 1 ; 1 0 0 ; 1 0 1 ;1 1 1]
disp(a)
for i=1: 6
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
x1=strcat([ b(1,1),b(1,2),b(1,3) ])
x2=strcat([ b(2,1),b(2,2),b(2,3) ])
x3=strcat([ b(3,1),b(3,2),b(3,3) ])
x4=strcat([ b(4,1),b(4,2),b(4,3) ])
x5=strcat([ b(5,1),b(5,2),b(5,3) ])
x6=strcat([ b(6,1),b(6,2),b(6,3) ])
x=([x1"+",x2"+",x3"+",x4"+",x5"+",x6])
disp(x)
//Expression is displayed//
disp('applying laws of boolean algebra')
disp('AC+A''B+B''C''')
