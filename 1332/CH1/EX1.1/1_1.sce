//Example 1.1
//Conversion to Decimal System
//Page no. 4
clc;close;clear;
function [s]=bas2dec(x,b)
    xi=int(x)
    xd=x-int(x)
    s=0
    for i=1:10
        xi=xi/10
        s=s+(10*(xi-fix(xi))*b^(i-1))
        xi=int(xi)
        if(xi==0)
            break
        end
    end
    for i=1:1
        xd=xd*10;
        s=s+(ceil(xd)/b^(i))
        xd=xd-fix(xd)
        if(xd==0)
            break
        end
    end
endfunction

//conversion from hexadecimal to decimal system
disp(hex2dec('1A2C'),'1A2C=');     //inbuit function

//conversion from hexadecimal to decimal system
disp(bas2dec(428.5,8),'428.5=')   //inline function

//conversion from hexadecimal to decimal system
disp(bas2dec(120.1,3),'120.1=')     //inline function