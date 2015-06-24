//example 3.4 
clc;
clear;
disp('Given the truth table has high output for following conditons :');
a=[0 0 0 ; 0 1 0 ; 1 0 0 ; 1 1 0 ] //given iput conditions for which output is high
disp(a)
for (i=1:4)
    if  a(i,1)==1 then
        b(i,1)= 'A'
    else 
        b(i,1)= 'A^'
    end
    if  a(i,2)==1 then
        b(i,2)= 'B'
    else 
        b(i,2)= 'B^'
    end
    if  a(i,3)==1 then
        b(i,3)= 'C'
    else
        b(i,3)= 'C^'
    end
end
disp('When you OR these products you get :') //displaying sum of products 
x=strcat([b(1,1) b(1,2) b(1,3) " + " b(2,1) b(2,2) b(2,3) " + " b(3,1) b(3,2) b(3,3) " + " b(4,1) b(4,2) b(4,3)]);
disp(x)