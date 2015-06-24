clc
clear
disp("Example 8.8")
printf("\n")
disp("convert the following binary numbers to decimal")
disp("a)11.101 b)0.0111 c)110.1101")
//Given binary number
i=1;w=1
bin=11.101
//separating integer part 
IP=floor(bin)
IP1=IP
//separating decimal part
DP=modulo(bin,1) 
//converting decimal value to interger
p=4
DP=DP*10^p //should change power of 10 as according to number of digits in decimal digit
//storing each integer digit in I(i)
while(IP>0)
    I(i)=modulo(IP,10);
    IP=floor(IP/10);
    i=i+1;
  end
//storing each decimal digit in D(w)
while(DP>0)
    D(w)=modulo(DP,2)
    DP=(DP/10)
    DP=floor(DP)
    w=w+1;
  end
//to do zero padding of remaining erm of D(w)
if(length(D)<p)
    q=length(D)
  for f=q+1 :p
    D(f)=0
    end
end
if(IP1>0)
for i=1:length(I)//checking whether it is a binary number or not
    if(I(i)>1) then
        disp('not a binary number')
        abort
    end
  end
end
if(IP1>0)
IP=0
for i=1:length(I)
//multipliying bits of integer part with their position values and adding 
    IP=IP+(I(i)*2^(i-1))
  end
  end
DP=0
for z=1:length(D)
//multipliying bits of decimal part with their position values and adding 
    DP=DP+(D(z)*2^(-1*(length(D)+1-z)))
end
decimal=IP+DP
//displaying the output
printf("Decimal format is")
disp(decimal)
