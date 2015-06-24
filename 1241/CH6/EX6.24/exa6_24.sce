//Example 6-24//
//Solve multiple output equation using mapping//
clc
//clears the window//
clear
//clears all existing variables//
disp('f1=Sigma m(0,1,2,4,6,7,10,14,15)')
//First function is displayed//
disp('f2=Sigma m(3,4,5,9,10,11,14) ')
//Second function is displayed//
disp('f1.f2=Sigma m(4,10,14)')
//Taking the common entries//
disp('Mapping for f1.f2')
disp('       C''D'' C''D CD CD'' ')
disp('A''B''   0     0    0  0 ')
disp('AB''     1     0    0  0 ')
disp('AB       0     0    0  1 ')
disp('AB''     0     0    0  1 ')
disp(' From the map, high outputs for 4,10,14')
//given logic equation//
a=[0 1 0 0;1 0 1 0;1 1 1 0]
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
    if a(i,4)==1 then
       b(i,4)='D'
   else
       b(i,4)=' D'' '
    end
end
disp(' evaluating expression from truth table and map ')
l=strcat([ b(1,1),b(1,2),b(1,3),b(1,4)])
m=strcat([ b(2,1),b(2,2),b(2,3),b(2,4)])
n=strcat([ b(3,1),b(3,2),b(3,3),b(3,4)])
x=strcat([l"+",m"+",n])
disp(x)
//Expression is displayed//
disp('now reducing expression using boolean algebra')
disp('ACD''+A''BC''D''')
