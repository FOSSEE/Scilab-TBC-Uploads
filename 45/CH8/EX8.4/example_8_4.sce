//example 8.4
clc;
clear;
en=input("Enter the enable input level(1 or 0) : ") ;
r=input("enter the R input level(1 or 0) : " );//accepting the inputs from the user 
s=input("enter the S input level(1 or 0) : " );
qn=input("Enter the previous output value(1 or 0) : ");

if en == 0 then // clculating the output 
    op = qn;
elseif (s==0 & r==0) then 
    op=qn;
elseif(s==1&r==1) then
    disp('The inputs are illegal');
    return;
else
    op=s;
    
end

printf('\n \noutput (Qn+1) = %d ',op);//displaying the output 