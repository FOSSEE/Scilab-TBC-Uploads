clc
clear
disp("Example 8.10")
printf("\n")
disp("convert the following decimal to binary numbers")
disp("a)47.8125 b)100.0001 c)29.3749")
//given decimal number
i=1;x=1
dec=47.8125
//separating integer part
IP=floor(dec)
IP1=IP 
//separating decimal part 
DP=modulo(dec,1)
//storing each integer digit in I(i)
while(IP>0) 
    I(i)=(modulo(floor(IP),2))
    IP=floor(IP)/2
    i=i+1
end
if(IP1>0)
IP=0
for j=1:length(I)
//multipliying bits of integer part with their position values and adding 
    IP=IP+(I(j)*10^(j-1));
  end
else
  IP=0
end

//storing each decimal digit in D(x)
while(x<=4)
    DP=DP*2
    D(x)=floor(DP)
    x=x+1
    DP=modulo(DP,1)
end 

DP=0         
for j=1:length(D)
//multipliying bits of decimal part with their position values and adding 
    DP=DP+(10^(-1*j)*D(j))
end
Binary=IP+DP;
printf("Binary format is")
disp(Binary)
