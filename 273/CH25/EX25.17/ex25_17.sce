clc;//clears the command window 
clear;//clears all the variables 
//example 25.17
//decimal to octa conversion

format('v',8);//making the default precision to 8 significant digits
i=1;w=1;
dec=375.23;//given decimal number which should be expressed in base 8
temp=modulo(dec,1);//separating decimal part from the given number
temp2=floor(dec);//separating integer part from the given number


while(temp2>0)//storing each integer digit in vector for convenience
    p(i)=(modulo(floor(temp2),8))
    temp2=floor(temp2/8);
    i=i+1;
end

temp2=0;//clearing temporary variable 'temp2'

for j=1:length(p)
//multipliying bits of integer part with their position values and adding 
    temp2=temp2+(p(j)*10^(j-1));
end

while(temp~=0) //storing each decimal digit in vector for convenience
    temp=temp*8;
    q(w)=floor(temp);
    w=w+1;
    temp=modulo(temp,1);
end 

temp1=0; //flag bit
for k=1:length(q)
//multipliying bits of decimal part with their position values and adding 
    temp1=temp1+(10^(-1*k)*q(k));
end
temp3=temp2+temp1;
disp(temp3,'octal number is');