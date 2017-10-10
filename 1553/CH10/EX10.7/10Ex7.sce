//chapter 10 Ex 1

clc;
clear;
close;
a=(50/3)/100; b=2/15; c=0.17; greatest=a;
if  a>b then if a>c then greatest=a;
end

else if b>c then greatest=b;
end
else greatest=c;
end

mprintf("The greatest number is %.2f",greatest);
