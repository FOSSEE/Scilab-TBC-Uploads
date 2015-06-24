clear;
clc;
disp("--------------Example 19.11---------------")
//address :- 0:15::1:12:1213
a1=0;
a2=15;
a8=1213;
a7=12;
a6=1;
n1=strsplit(string(a1));
n2=strsplit(string(a2));
n8=strsplit(string(a8));
n7=strsplit(string(a7));
n6=strsplit(string(a6));
function [n]=org_address (num,nmatrix) //function to form the 2 bytes in hexadecimal
    n="";
    for i=1:4-length(string(num))
        n=n+'0';
    end
    for i=1:length(string(num))
        n=n+nmatrix(i);
    end
endfunction
f1=org_address(a1,n1); //2 byte addresses
f2=org_address(a2,n2);
f8=org_address(a8,n8);
f7=org_address(a7,n7);
f6=org_address(a6,n6);
f3="0000";  // zeros 
f4=f3;
f5=f3;
printf("\nThe original address is %s:%s:%s:%s:%s:%s:%s:%s",f1,f2,f3,f4,f5,f6,f7,f8);  //display the original addresses
