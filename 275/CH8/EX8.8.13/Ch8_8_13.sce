clc
clear
disp("Example 8.13")
printf("\n")
disp("convert the following decimael numbers to Octal")
disp("a)283 b)847.951 c)0.728")
//given decimal number
i=1;x=1
dec=283
//separating integer part
IP=floor(dec)
IP1=IP 
//separating decimal part 
DP=modulo(dec,1)
//storing each integer digit in I(i)
while(IP>0) 
    I(i)=(modulo(floor(IP),8))
    IP=floor(IP)/8
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
if(DP<1)
  if(DP>0)
while(x<=4)
    DP=DP*8
    D(x)=floor(DP)
    x=x+1
    DP=modulo(DP,1)
end 

DP=0         
for j=1:length(D)
//multipliying bits of decimal part with their position values and adding 
    DP=DP+(10^(-1*j)*D(j))
  end
end 
end
octal=IP+DP
printf("Octal format")
disp(octal)
