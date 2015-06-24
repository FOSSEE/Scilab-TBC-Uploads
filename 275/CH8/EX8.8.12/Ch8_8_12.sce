clc
clear
disp("Example 8.12")
printf("\n")
disp("convert the following octal to decimal")
disp("a)243 b)124.21 c)0.65")
//Given octal number
i=1;w=1
oct=243
//separating integer part 
IP=floor(oct)
IP1=IP
//separating decimal part
DP=modulo(oct,1) 
DP1=DP
//converting decimal value to interger
p=2
DP=DP*10^p //should change power of 10 as according to number of digits in decimal digit
//storing each integer digit in I(i)
while(IP>0)
    I(i)=modulo(IP,10);
    IP=floor(IP/10);
    i=i+1;
  end
//storing each decimal digit in D(w)
while(DP>0)
    D(w)=modulo(DP,10)
    DP=(DP/10)
    DP=floor(DP)
    w=w+1;
  end
//to do zero padding of remaining erm of D(w)
if(DP1<1)
    if(DP1>0)
if(length(D)<p)
    q=length(D)
  for f=q+1 :p
    D(f)=0
    end
  end
end
end

if(IP1>0)
for i=1:length(I)//checking whether it is a octal number or not
    if(I(i)>8) then
        disp('not a octal number')
        abort
    end
  end
end
if(IP1>0)
IP=0
for i=1:length(I)
//multipliying bits of integer part with their position values and adding 
    IP=IP+(I(i)*8^(i-1))
  end
end

if(DP1<1)
  if(DP1>0)
DP=0
for z=1:length(D)
  //multipliying bits of decimal part with their position values and adding
  if(D(z)<8) 
    DP=DP+(D(z)*8^(-1*(length(D)+1-z)))
  else
    IP=0
    DP=0
    printf("not a octal number")
    abort
  end
end
end

decimal=IP+DP
//displaying the output
printf("Decimal format")
disp(decimal)
