//constructing an even parity 7 bit hamming code//
//example 28.a//
clc
//clears the command window//
clear
//clears//
z=0100;//input//
a=0;b=0;c=0;d=0;
//taking the input//
for i=1:7
    x(i)=0
    if (i==5) then
        x(i)=1
    end
end
//establishing even parity at positions 1,3,5,7//
for i=3:7
    if (x(i)==1) then
        a=a+1
    end
end
d=modulo(a,2)
if (d==1) then
    x(1)=1
end
//establishing even parity at positions 2,3,6,7//
for i=3:7
    if (i==5) then
        continue
    end
    if (x(i)==1) then
        b=b+1
    end
end
d=modulo(b,2)
if (d==1) then
    x(2)=1
end
//establishing even parity at positions 4,5,6,7//
for i=5:7
    if (x(i)==1) then
        c=c+1
    end
end
d=modulo(c,2)
if (d==1) then
    x(4)=1
end
//displaying the result//
disp('the required hamming code is:')
for i=1:7
    printf('%d',x(i))
end
