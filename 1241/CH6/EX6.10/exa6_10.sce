//Example 6-10//
//Map L=W''X''YZ+WX''YZ''+WX''Y''Z''+W''XYZ//
clc
//clears the console//
clear
//clears all existing variables//
//Mapping the expression//
disp('       C''D'' C''D CD CD'' ')
disp('A''B''   0     0    1  0 ')
disp('AB''     0     0    1  0 ')
disp('AB       0     0    0  0 ')
disp('AB''     1     0    0  1 ')
disp(' From the map, high outputs for 3,7,8,10 ')
a=[0 0 1 1 ; 0 1 1 1 ; 1 0 0 0 ; 1 0 1 0]
disp(a)
for i=1: 4
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
disp(' evaluating expression from truth table and map ')
l=strcat([ b(1,1),b(1,2),b(1,3),b(1,4)])
m=strcat([ b(2,1),b(2,2),b(2,3),b(2,4)])
n=strcat([ b(3,1),b(3,2),b(3,3),b(3,4)])
o=strcat([ b(4,1),b(4,2),b(4,3),b(4,4)])
x=strcat([l"+",m"+",n"+",o ])
disp(x)
//Expression is displayed//
