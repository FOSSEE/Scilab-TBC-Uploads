//Example 3.16: Reduce expression using k-map 
clc; //clears the window
clear; //clears all existing variables
//Mapping the expression//
disp('       W''X'' W''X  WX  WX'' ')
disp('Y''Z''   1          1   1 ')
disp('YZ''    1          1      ')
disp('YZ                1   1')
disp('YZ''    1     1           ')
disp(' From the map, high outputs are for 0,1,3,7,8,11,12,13,15 ') //given logic equation
a=[0 0 0 0;0 0 0 1;0 0 1 1;0 1 1 1 ;1 0 0 0; 1 0 1 1 ;1 1 0 0;1 1 0 1 ;1 1 1 1']
disp(a)
for i=1: 9
    if a(i,1)==1 then
       b(i,1)='W'
   else
       b(i,1)='W'''
    end
    if a(i,2)==1 then
       b(i,2)='X'
   else
       b(i,2)='X'''
    end
     if a(i,3)==1 then
       b(i,3)='Y'
   else
       b(i,3)='Y'''
    end
    if a(i,4)==1 then
       b(i,4)='Z'
   else
       b(i,4)=' Z'''
    end
end
disp(' Evaluating expression from truth table and map ')
x1=strcat([ b(1,1),b(1,2),b(1,3),b(1,4) ])
x2=strcat([ b(2,1),b(2,2),b(2,3),b(2,4) ])
x3=strcat([ b(3,1),b(3,2),b(3,3),b(3,4) ])
x4=strcat([ b(4,1),b(4,2),b(4,3),b(4,4) ])
x5=strcat([ b(5,1),b(5,2),b(5,3),b(5,4) ])
x6=strcat([ b(6,1),b(6,2),b(6,3),b(6,4) ])
x7=strcat([ b(7,1),b(7,2),b(7,3),b(7,4) ])
x8=strcat([ b(8,1),b(8,2),b(8,3),b(8,4) ])
x9=strcat([ b(9,1),b(9,2),b(9,3),b(9,4) ])
x=[x1"+",x2"+",x3"+",x4"+",x5"+",x6"+",x7"+",x8"+",x9]
disp(x)
//Expression is displayed//
disp('The four probable solutions are')
disp('F = YZ + W''X''Z + X''Y''Z'' + WXY''')
disp('F = YZ + W''X''Y'' + X''Y''Z'' + WXY''')
disp('F = YZ + W''X''Y'' + WY''Z'' + WXY''')
disp('F = YZ + W''X''Y'' + WY''Z'' + WXZ')
