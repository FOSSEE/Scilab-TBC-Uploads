//example 3.3
clc;
clear;
//disp(' Enter the inputs for AND gate ');
//for i=1:7
//printf("Enter wether the led %d is on or off (1 or 0) :",i);
//a(i)=input('');
//end;
//disp('Enter the inputs for OR gate' )
//for i=1:7
//printf("Enter wether the led %d is on or off (1 or 0) :",i);
//b(i)=input('');
//end;
a= [0 1 0 1 1 0 0]; //lights on a logic clip 
b= [0 0 0 0 1 1 0]; 
k=bitand(a(1),a(2));  
k2 = bitand(a(4),a(5));
k3=bitor(b(1),b(2));
k4 = bitor(b(4),b(5));
if a(3) ~= k then // checking which gate is faulty 
    disp("The first  AND gate is diffective ");
elseif  a(6) ~= k2 then
        disp("The second AND gate is diffective ");
 elseif b(3) ~= k3 then
    disp("The first OR gate is diffective ");
elseif  b(6) ~= k4 then
        disp("The second OR gate is diffective ");
    else 
        disp('All the gates are working correctly');
end