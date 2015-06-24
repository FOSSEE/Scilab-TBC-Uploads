//Example 1.13
//1s compliment and 2s compliment
//Page no. 11
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
function [x1]=com2(x)         //function for 2s compliment()
    for i=8:-1:1
        x=x/10;
        xd=x-fix(x)
        if(int((xd*10)+0.1)==1)
            x1(1,i)=0;
        else
            x1(1,i)=1;
        end
    end
    for i=8:-1:1
        if (x1(1,i)==0) then
           x1(1,i)=1;
           break;
        else
           x1(1,i)=0;
        end
        
    end
endfunction
a=[00010011,01110110,11101101,10000001,10000000,00000000];
for i=1:6
    printf('1s Compliment of %.8i=',a(i));
    disp(com1(a(i)))
    printf('2s Compliment of %.8i=',a(i));
    disp(com2(a(i)))
    printf('\n\n')
end