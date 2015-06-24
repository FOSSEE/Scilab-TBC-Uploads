//locating error in hamming code and correcting it//
//example 29//
clc
//clears the command window//
clear
//clears//
a=1111001
  b=0;c=0;d=0;e=0;
  for i=1:7
    x(8-i)=modulo(a,10)
    a=a/10
    a=floor(a)
end
//checking even parity at positions 4,5,6,7//
for i=4:7
    if (x(i)==1) then
        b=b+1
    end
end
d=modulo(b,2)
if (d==0) then
    r1=0
else
    r1=1
end
//checking even parity at positions 2,3,6,7//
for i=2:7
    if (i==4) then
        continue
    end
    if (i==5) then
        continue
    end
    if (x(i)==1) then
        c=c+1
    end
end
d=modulo(c,2)
if (d==0) then
    r2=0
else
    r2=1
end
//checking even parity at positions 1,3,5,7//
for i=1:7
    if (i==2) then
        continue
    end
    if (i==4) then
        continue
    end
    if (i==6) then
        continue
    end
    if (x(i)==1) then
        e=e+1
    end
end
d=modulo(e,2)
if (d==0) then
    r3=0
else
    r3=1
end
r=r1*(2^2)+r2*(2^1)+r3;//converting to equivalent decimal//
printf('error occurs at position=%d\n',r)
//bit position at which error occurs has to be changed//
if (x(r)==1) then
    x(r)=0
else
    x(r)=1
end
//displaying the correct hamming code//
disp('the correct hamming code is:')
for i=1:7
   printf('%d',x(i))
end

