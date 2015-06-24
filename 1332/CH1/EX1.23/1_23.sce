//Example 1.23
//Multiplication
//Page no. 18
clc;clear;close;

function [x1]=mul(x,y)
    for i=1:8
        x1(1,i)=0
    end
    printf('Multiplication of %.4i and %.4i = ',x,y)
    x=x*y;
    c=0;
    for i=8:-1:1
        x=x/10;
        xd=floor((x-fix(x))*10+0.1)
        if c==1 then
            if xd==0 then
                x1(1,i)=1;c=0
            elseif xd==1
                x1(1,i)=0;
                c=1;
            elseif xd==2
                x1(1,i)=1;c=1;
            end
        else
            if xd==0 | xd==1 then
                x1(1,i)=xd;c=0
            elseif xd==2
                x1(1,i)=0;
                i=i-1;c=1;
            end
        end
    end
    disp(x1)
endfunction
mul(1110,1011);