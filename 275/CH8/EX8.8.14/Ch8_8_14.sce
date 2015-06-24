clc
clear
disp("Example 8.14")
printf("\n")
disp("convert the following binary number to Octal")
disp("a)101111 b)1010101 c)1110.01101")
i=1;x=1;w=1
//convert binary to decimal
bin=101111
//separating integer part 
IP=floor(bin)
IP1=IP
//separating decimal part
DP=modulo(bin,1) 
DP1=DP
//converting decimal value to interger
p=5
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
  if(DP1>0)
    if(DP1<1)
if(length(D)<p)
    q=length(D)
  for f=q+1 :p
    D(f)=0
    end
  end
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
if(DP1>0)
  if(DP1<1)
DP=0
for z=1:length(D)
//multipliying bits of decimal part with their position values and adding 
    DP=DP+(D(z)*2^(-1*(length(D)+1-z)))
  end
  else
  DP=0
end
else
DP=0
end
decimal=IP+DP
//displaying the output
disp(decimal)



//convert decimal to octal
i=1;
//separating integer part
IP2=floor(decimal)
IP3=IP2 
//separating decimal part 
DP2=modulo(decimal,1)
//storing each integer digit in I(i)
while(IP2>0) 
    J(i)=(modulo(floor(IP2),8))
    IP2=floor(IP2)/8
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
if(DP2<1)
  if(DP2>0)
while(x<=4)
    DP2=DP2*8
    E(x)=floor(DP2)
    x=x+1
    DP2=modulo(DP2,1)
end 

DP2=0         
for j=1:length(E)
//multipliying bits of decimal part with their position values and adding 
    DP2=DP2+(10^(-1*j)*E(j))
  end
end 
end
octal=IP2+DP2
printf("Octal format")
disp(octal)
