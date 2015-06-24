//Example 1.25
//Division
//Page no. 19
clc;close;clear;
function [co]=com(x,y)
    co=1;
    for i=1:length(x)
        if x(i)>y(i) then
            break
        elseif x(i)==y(i)
            continue
        else
            co=0;break
        end
    end
endfunction
function [x1]=sub(x,y)           //function for subtraction of binaries
        c=0;m=0;
        for i=1:5
            x1(1,i)=0
        end
        for i=5:-1:1
            if c==1 then
                if x(i)==0 & y(i)==1 then
                    x1(1,i)=0;c=1;
                elseif x(i)==0 & y(i)==0
                    x1(1,i)=1;c=0;
                elseif x(i)==1 & y(i)==1
                    x1(1,i)=1;c=1;
                elseif x(i)==1 & y(i)==0
                    x1(1,i)=0;c=0;
                end
            else
                if x(i)==1 & y(i)==1 then
                    x1(1,i)=0;c=0;
                elseif x(i)==0 & y(i)==0
                    x1(1,i)=0;c=0;
                elseif x(i)==1 & y(i)==0
                    x1(1,i)=1;c=0;
                elseif x(i)==0 & y(i)==1
                    x1(1,i)=1;c=1;
                end
            end
        end
    disp(x1,'Remainder = ')
endfunction
d1=11011001;d2=01011;d22=[0,0,0,0,0]
for i=8:-1:1
    d3=d1/10;
    div(1,i)=int(10*(d3-int(d3)))
    d1=d1/10
end
for i=5:-1:1
    d3=d2/10;
    d21(1,i)=int(10*(d3-int(d3))+0.5)
    d2=d2/10
end
div1(1,1)=0
for j=1:4
    div1(1,j+1)=div(1,j)
end
for i1=1:5
    printf('After Step %i : \n',i1)
    if com(div1,d21)==1 then
        dis(1,i1)=1
        n=sub(div1,d21)
    else
        dis(1,i1)=0
        n=sub(div1,d22)
end
disp(dis,'Divisor = ')
if i1==5 then
    break
end
       for j=1:5
                if j<5 then
                    div1(1,j)=n(j+1)
                else
                    div1(1,j)=div(1,i1+4)
                end
        end

printf('\n\n\n\n')
end