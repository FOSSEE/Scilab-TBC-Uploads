//Example 1.14
//1s compliment
//Page no. 12
clc;close;clear;

function [x1]=com1(x)      //function for 1s compliment
    for i=8:-1:1
        x=x/10;
        xd=x-fix(x)
        if(floor((xd*10)+0.1)==1)
            x1(1,i)=0;
        else
            x1(1,i)=1;
        end
        x=x-xd;
    end
endfunction
a=[00010011,01110110,11101101,10000001,10000000,00000000];
for i=1:6
    printf('1s Compliment of %.8i=',a(i));
    disp(com1(a(i)))
    printf('\n\n')
end