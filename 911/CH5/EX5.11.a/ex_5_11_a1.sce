// example 5.11(a)//
clc
clear ;
disp ('Given the truthtable has high output for following conditons : ' );
a =[1 0 0 0; 1 1 0 1 ;1 1 0 0 ; 1 0 0 0 ] 
//given input conditions for which output is high//
disp (a)
for (i =1:4)
if a(i ,1) ==1 then
b(i ,1)= 'A'
else
b(i ,1)= 'A^ '
end
if a(i ,2) ==1 then
b(i ,2)= 'B '
else
b(i ,2)= 'B^ '
end
if a(i ,3) ==1 then
b(i ,3)= 'C '
else
b(i ,3)= 'C^ '
end
end
disp ( 'When you OR these products you get : ' ) 
//displaying sum of products
x= strcat ([b(1 ,1) '+' b(3 ,3) ]);
disp (x)