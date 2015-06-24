//Example 3-1//
//BCD addition//
clc
//clears the console//
clear
//clears all existing variables//
a=647
b=492
for i=1: 3
    x(i)=modulo(a,10)
    a=a/10
    a=floor(a)
    y(i)=modulo(b,10)
    b=b/10
    b=floor(b)
end
d=x(1)+y(1)
db=dec2bin(d)
if d>9 then
    db=dec2bin(d+6)
    db=dec2bin(bin2dec(db)-bin2dec('10000'))
end
e=x(2)+y(2)
eb=dec2bin(e)
if d>9 then
    eb=dec2bin(e+1)
    e=e+1
    end
if e>9
    eb=dec2bin(e+6)
    eb=dec2bin(bin2dec(eb)-bin2dec('10000'))
end
f=x(3)+y(3) 
fb=dec2bin(f)
if e>9 then
    fb=dec2bin(f+1)
    f=f+1
    end
if f>9
    fb=dec2bin(f+6)
    fb=dec2bin(bin2dec(fb)-bin2dec('10000'))
    dc(4)=1
    end
dc(1)=bin2dec(db)
dc(2)=bin2dec(eb)
dc(3)=bin2dec(fb)
z=0
for i=1: 4
    z=z+dc(i)*(10^(i-1))
end
disp(z)
disp('equivalent binary form')
p=strcat(dec2bin(dc(4),1)+dec2bin(dc(3),4)+dec2bin(dc(2),4)+dec2bin(dc(1),4))
disp(p)
//answer is displayed//
