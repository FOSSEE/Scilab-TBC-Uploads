clc;//clears the command window 
clear;//clears all the variables 
format('v',18);//changing the default prcision to 20 significant digits

i=1;x=1;//flag bits

dec=432.354;//given decimal number which should be expressed in base 2
temp2=floor(dec);//separating integer part from the given number
temp4=modulo(dec,1);//separating decimal part from the given number

while(temp2>0)//storing each integer digit in vector for convenience
    p(i)=(modulo(floor(temp2),2))
    temp2=floor(temp2)/2;
    i=i+1;
end

temp2=0;//clearing temporary variable 'temp2'

for j=1:length(p)
//multipliying bits of integer part with their position values and adding 
    temp2=temp2+(p(j)*10^(j-1));
end

while(temp4~=0) //storing each decimal digit in vector for convenience
    temp4=temp4*2;
    d(x)=floor(temp4);
    x=x+1;
    temp4=modulo(temp4,1);
end 

temp5=0;         //clearing temporary variable 'temp5'

for j=1:length(d)
//multipliying bits of decimal part with their position values and adding 
    temp5=temp5+(10^(-1*j)*d(j))
end

temp3=temp2+temp5;
//finally adding both the integer and decimal parts to get total output.
disp(temp3);//displays output