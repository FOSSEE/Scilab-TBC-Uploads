//Example 1.15
//Addition and Subtraction
//Page no. 13
clc;clear;close;
function [x1]=add(x,y)                  //function for addition of binaries
    c=0;
    for i=1:10
        x1(1,i)=0
    end
    for i=10:-1:1
        x=x/10;
        xd=x-fix(x)
        x=x-xd;
        y=y/10;
        yd=y-fix(y)
        y=y-yd;
        if c==1 then
            if floor((xd*10)+0.1)==1 & floor((yd*10)+0.1)==1 then
                x1(1,i)=1;c=1;
            elseif floor((xd*10)+0.1)==0 & floor((yd*10)+0.1)==0
                x1(1,i)=1;c=0;
            else
                x1(1,i)=0;c=0;
            end
        else
            if floor((xd*10)+0.1)==1 & floor((yd*10)+0.1)==1 then
                x1(1,i)=0;c=1;
            elseif floor((xd*10)+0.1)==0 & floor((yd*10)+0.1)==0
                x1(1,i)=0;c=0;
            else
                x1(1,i)=1;c=0;
            end
        end
    end
    disp(x1,'Addition of 173 and 141= ')
endfunction
function [x1]=sub(x,y)           //function for subtraction of binaries
        c=0;
        for i=1:10
            x1(1,i)=0
        end
        for i=10:-1:1
            x=x/10;
            xd=x-fix(x)
            x=x-xd;
            y=y/10;
            yd=y-fix(y)
            y=y-yd;
            if c==1 then
                if floor((xd*10)+0.1)==0 & floor((yd*10)+0.1)==1 then
                    x1(1,i)=0;c=1;
                elseif floor((xd*10)+0.1)==0 & floor((yd*10)+0.1)==0
                    x1(1,i)=1;c=0;
                elseif floor((xd*10)+0.1)==1 & floor((yd*10)+0.1)==1
                    x1(1,i)=1;c=1;
                elseif floor((xd*10)+0.1)==1 & floor((yd*10)+0.1)==0
                    x1(1,i)=0;c=0;
                end
            else
                if floor((xd*10)+0.1)==1 & floor((yd*10)+0.1)==1 then
                    x1(1,i)=1;c=1;
                elseif floor((xd*10)+0.1)==0 & floor((yd*10)+0.1)==0
                    x1(1,i)=0;c=0;
                elseif floor((xd*10)+0.1)==1 & floor((yd*10)+0.1)==0
                    x1(1,i)=1;c=0;
                elseif floor((xd*10)+0.1)==0 & floor((yd*10)+0.1)==1
                    x1(1,i)=1;c=1;
                end
            end
        end
    disp(x1,'Subtraction of 45 from 228= ')
endfunction
add(10101101,10001101)
sub(11100100,00101101)