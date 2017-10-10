//example 5.11(b)//
clc ;
clear ;
disp ( ' Given the truthtable has high output for following conditons : ' );
a =[1 0 0 0; 1 1 0 1 ;1 1 0 0 ; 1 0 0 0 ] 
// given truthtable//
disp (a)
for (i =1:3) 
    //finding the terms i n pos
if a(i ,1) ==0 then
b(i ,1)= 'A'
else
b(i ,1)= 'A^ '
end
if a(i ,2) ==0 then
b(i ,2)= 'B '
else
b(i ,2)= 'B^ '
end
if a(i ,3) ==0 then
b(i ,3)= 'C '
else
b(i ,3)= 'C^ '
end
end
disp (b)
disp ( 'The product of sums equation is : ' ) 
//displaying the POS//
x= strcat ([ " ( " b(1 ,1) " + " b(1 ,3) " ) " ]);
disp (x)