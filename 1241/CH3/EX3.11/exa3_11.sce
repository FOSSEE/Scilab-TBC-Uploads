//Example 3-11//
//Correction of received Hamming code//
clc
//clears the console//
clear
//clears all existing variables//
z=1111101
//incorrect code taken as input//
a=0;b=0;c=0;d=0;
//taking the input in an array//
for i=1: 7
    x(i)=1
    if i==2 then
       x(i)=0 
    end
end
//checking for 4,5,6,7 even parity//
for i=4: 7
    if x(i)==1 then
       a=a+1 
    end
end    
d=modulo(a,2)
if d==1 then
   disp('wrong entry for 4,5,6,7')
   x(4)=1
else
    disp('correct entry for 4,5,6,7')
end
//checking for 2,3,6,7 even parity//
for i=2: 7
    if i==4 then
       continue 
    end
    if i==5 then
       continue 
    end
    if x(i)==1 then
       a=a+1 
    end
end    
d=modulo(a,2)
if d==1 then
   disp('wrong entry for 2,3,6,7')
   x(2)=1
else
    disp('correct entry for 2,3,6,7')
end
//checking for 1,3,5,7 even parity//
for i=1: 7
    if i==2 then
       continue 
    end
    if i==4 then
       continue 
    end
    if i==6 then
       continue 
    end
    if x(i)==1 then
       a=a+1 
    end
end    
d=modulo(a,2)
if d==1 then
   disp('correct entry for 1,3,5,7')
   x(1)=1
else
    disp('wrong entry for 1,3,5,7')
end
disp('Therefore,bit 2 is in error and the corrected code is :')
for i=1: 7
    disp(x(i))
end
//correct code is displayed//    

