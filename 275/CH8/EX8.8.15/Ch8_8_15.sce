clc
clear
disp("Example 8.15")
printf("\n")
disp("convert the following octal to binary number")
disp("a)724 b)365.217 c)0.506")
//Given binary number
i=1;w=1
bin=724
//separating integer part 
IP=floor(bin)
IP1=IP
//separating decimal part
DP=modulo(bin,1) 
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
disp(decimal)



//decimal to Binary
//given decimal number
i=1;x=1
//separating integer part
IP2=floor(decimal)
IP3=IP2
//separating decimal part 
DP2=modulo(decimal,1)
//storing each integer digit in I(i)
while(IP2>0) 
    J(i)=(modulo(floor(IP2),2))
    IP2=floor(IP2)/2
    i=i+1
end
if(IP3>0)
IP2=0
for j=1:length(J)
//multipliying bits of integer part with their position values and adding 
    IP2=IP2+(J(j)*10^(j-1));
  end
else
  IP2=0
end

//storing each decimal digit in D(x)
while(x<=4)
    DP2=DP2*2
    E(x)=floor(DP)
    x=x+1
    DP2=modulo(DP2,1)
end 

DP2=0         
for j=1:length(E)
//multipliying bits of decimal part with their position values and adding 
    DP2=DP2+(10^(-1*j)*E(j))
end
Binary=IP2+DP2;
printf("Binary format")
disp(Binary)
