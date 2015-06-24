//example 2.15
clc
clear
s=0; // s from the register 
s(1)=input('Enter the value at S0 :')
s(2)=input('Enter the value at S1 :')
s(3)=input('Enter the value at S2 :')
s(4)=input('Enter the value at S3 :')
s(5)=input('Enter the value at S4 :')
s(6)=input('Enter the value at S5 :')
s(7)=input('Enter the value at S6 :')
s(8)=input('Enter the value at S7 :')
count =0;
for i =1 :8 //loop to detect a '1' 
    if s(i)==1 then
        disp('ZERO is LOW');
        break;
    end
    count =count+1;       
end
if count==8 then
    disp('ZERO is HIGH');
end;