
//Example 6-17//
//reduce expression using k-map by both POS and SOP//
clc
//clears the window//
clear
//clears all existing variables//
//Mapping the expression//
disp('       C''D'' C''D CD CD'' ')
disp('A''B''   1     1    1  0 ')
disp('AB''     0     0    1  1 ')
disp('AB       0     1    1  0 ')
disp('AB''     1     1    0  0 ')
disp(' From the map, high outputs for 0,1,3,6,7,8,9,13,15 ')
disp(' From the map, low outputs for 2,4,5,10,11,12,14 ')
//given logic equation//
a=[0 0 0 0;0 0 0 1;0 0 1 1 ;0 1 1 0;0 1 1 1;1 0 0 0 ;1 0 0 1;1 1 0 1;1 1 1 1]
disp(a)
c=[0 0 1 0;0 1 0 0;0 1 0 1;1 0 1 0;1 0 1 1;1 1 0 0;1 1 1 0]
disp(c)
for i=1: 9
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
end
for i=1: 7
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
disp(' evaluating expression(minterms)from truth table and map ')
x1=strcat([ b(1,1),b(1,2),b(1,3),b(1,4) ])
x2=strcat([ b(2,1),b(2,2),b(2,3),b(2,4) ])
x3=strcat([ b(3,1),b(3,2),b(3,3),b(3,4) ])
x4=strcat([ b(4,1),b(4,2),b(4,3),b(4,4) ])
x5=strcat([ b(5,1),b(5,2),b(5,3),b(5,4) ])
x6=strcat([ b(6,1),b(6,2),b(6,3),b(6,4) ])
x7=strcat([ b(7,1),b(7,2),b(7,3),b(7,4) ])
x8=strcat([ b(8,1),b(8,2),b(8,3),b(8,4) ])
x9=strcat([ b(9,1),b(9,2),b(9,3),b(9,4) ])
x=([x1"+",x2"+",x3"+",x4"+",x5"+",x6"+",x7"+",x8"+",x9 ])
disp(x)
disp(' evaluating expression(maxterms)from truth table and map ')
disp(' (A+B+C''+D).(A+B''+C+D).(A+B''+C+D'').(A''+B+C''+D).(A''+B+C''+D'').(A''+B''+C+D).(A''+B''+C''+D) ')
//Expression is displayed//
disp('now reducing expression using boolean algebra')
disp('SOP- B''C''+A''B''D+A''BC+ABD      ie 15 inputs')
disp('POS- (B+C''+D)(A''+B''+D)(A+B''+C)(A''+B+C'')   ie 16 inputs')
disp('Therefore SOP form is less expensive')
