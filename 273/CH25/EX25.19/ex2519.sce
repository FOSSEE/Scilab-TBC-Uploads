clc;//clears the command window 
clear;//clears all the variables 
//example 25.19
//octal to binary conversion

format('v',8);//setting the default precision to 8

i=1;w=1;

bin=34.56; //Given octal number which we need to be convert into binary
temp1=floor(bin);//separating integer part from the given number
temp0=modulo(bin,1);//separating decimal part from the given number
temp2=temp0*10^2;//converting decimal value to interger for convenience
while(temp1>0)  //storing each integer digit in vector for convenience
    p(i)=modulo(temp1,10);
    temp1=round(temp1/10);
    i=i+1;
end

while(temp2>0)  //storing each decimal digit in vector for convenience
    q(w)=modulo(temp2,10);
    temp2=floor(temp2/10);
    w=w+1;
    
end
temp1=0;  //clearing temporary variable 'temp1

for i=1:2
//multipliying bits of decimal part with their position values and adding 
    temp1=temp1+(p(i)*8^(i-1));
end

temp2=0;//clearing temporary variable 'temp2'
for z=1:2
//multipliying bits of decimal part with their position values and adding 
    temp2=temp2+(q(z)*8^(-1*(3-z)));
    
end

temp=temp1+temp2;
//adding both integer and decimal parts to get total deciaml value.
dec=temp;

temp2=floor(dec); //separating integer part from the given number
temp3=modulo(dec,1);//separating decimal part from the given number
format('v',18);//setting the default precision to 8

i=1;x=1;//flag bits

while(temp2>0)//storing each integer digit in vector for convenience
    p(i)=(modulo(floor(temp2),2))
    temp2=floor(temp2/2);
    i=i+1;
end

temp2=0; //clears temporary variable 'temp2'

for j=1:length(p)
//multipliying bits of integer part with their position values and adding 
    temp2=temp2+(p(j)*10^(j-1));
end

temp4=modulo(temp3,1);

while(temp4~=0)//storing each decimal digit in vector for convenience
    temp4=temp4*2;
    d(x)=floor(temp4);
    x=x+1;
    temp4=modulo(temp4,1);
end 

temp5=0; //clears temporary variable 'temp2'

for j=1:length(d)
//multipliying bits of decimal part with their position values and adding 
    temp5=temp5+(10^(-1*j)*d(j))
end

temp=temp2+temp5;
//finally adding both the integer and decimal parts to get total output.
disp(temp,'binary number is');