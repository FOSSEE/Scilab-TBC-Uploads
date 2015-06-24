clc;//clears the command window 
clear;//clears all the variables 
format('v',8);//making the default precision to 8 significant digits
i=1;
dec=548;//given decimal number which should be expressed in base 8
temp=dec;
i=1;
d=8;
while(temp>0)//storing each integer digit in vector for convenience
     p(i)=(modulo(floor(temp),d))
     temp=floor(temp)/d;
     i=i+1;
end
temp2=0;
for j=1:length(p)
//multipliying bits of integer part with their position values and adding 
    temp2=temp2+(p(j)*10^(j-1));
end
disp(temp2,"Octal number");
dec=345;
//given decimal number which should be expressed in base 8
temp=dec;
i=1;
d=6;
while(temp>0)//storing each integer digit in vector for convenience
     p(i)=(modulo(floor(temp),d))
     temp=floor(temp)/d;
     i=i+1;
end
temp2=0;
for j=1:length(p)
//multipliying bits of integer part with their position values and adding 
    temp2=temp2+(p(j)*10^(j-1));
end
disp(temp2,"Base 6");