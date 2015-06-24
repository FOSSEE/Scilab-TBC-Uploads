//Example 6-15//
//Mapping an equation//
clc
//clears the console//
clear
//clears all existing variables//
//Mapping the expression//
disp('Z=m(2,3,6,7,9,10,12,13,14,16,18,22,26,28,29,30)')
disp('               A''                            A          ')
disp('       D''E'' D''E DE DE''            D''E'' D''E DE DE''')
disp('B''C''   0     0    1  1                1     0   0  1   ')
disp('BC''     0     0    1  1                0     0   0  1   ')
disp('BC       1     1    0  1                1     1   0  1   ')
disp('BC''     0     1    0  1                0     0   0  1   ')
disp(' From the map, high outputs for 2,3,6,7,9,10,12,13,14,16,18,22,26,28,29,30 ')
//Therefore the kmap is displayed//
a=[0 0 0 1 0;0 0 0 1 1;0 0 1 1 0;0 0 1 1 1;0 1 0 0 1;0 1 0 1 0;0 1 1 0 0;0 1 1 0 1;0 1 1 1 0;1 0 0 0 0;1 0 0 1 0;1 0 1 1 0;1 1 0 1 0;1 1 1 0 0;1 1 1 0 1;1 1 1 1 0]
disp(a)
for i=1: 16
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
    if a(i,4)==1 then
       b(i,4)='D'
   else
       b(i,4)=' D'''
    end
     if a(i,5)==1 then
       b(i,5)='E'
   else
       b(i,5)=' E'''
    end
end
disp(' evaluating expression from truth table and map ')
x1=strcat([ b(1,1),b(1,2),b(1,3),b(1,4),b(1,5) ])
x2=strcat([ b(2,1),b(2,2),b(2,3),b(2,4),b(2,5) ])
x3=strcat([ b(3,1),b(3,2),b(3,3),b(3,4),b(3,5) ])
x4=strcat([ b(4,1),b(4,2),b(4,3),b(4,4),b(4,5) ])
x5=strcat([ b(5,1),b(5,2),b(5,3),b(5,4),b(5,5) ])
x6=strcat([ b(6,1),b(6,2),b(6,3),b(6,4),b(6,5) ])
x7=strcat([ b(7,1),b(7,2),b(7,3),b(7,4),b(7,5) ])
x8=strcat([ b(8,1),b(8,2),b(8,3),b(8,4),b(8,5) ])
x9=strcat([ b(9,1),b(9,2),b(9,3),b(9,4),b(9,5) ])
x10=strcat([ b(10,1),b(10,2),b(10,3),b(10,4),b(10,5) ])
x11=strcat([ b(11,1),b(11,2),b(11,3),b(11,4),b(11,5) ])
x12=strcat([ b(12,1),b(12,2),b(12,3),b(12,4),b(12,5) ])
x13=strcat([ b(13,1),b(13,2),b(13,3),b(13,4),b(13,5) ])
x14=strcat([ b(14,1),b(14,2),b(14,3),b(14,4),b(14,5) ])
x15=strcat([ b(15,1),b(15,2),b(15,3),b(15,4),b(15,5) ])
x16=strcat([ b(16,1),b(16,2),b(16,3),b(16,4),b(16,5) ])
x=([x1"+",x2"+",x3"+",x4"+",x5"+",x6"+",x7"+",x8"+",x9"+",x10"+",x11"+",x12"+",x13"+",x14"+",x15"+",x16 ])
disp(x)
disp('Reduced expression')
disp('A''BD''E+AB''C''E''+A''B''D+BCD''+DE''')
//Expression is displayed//
