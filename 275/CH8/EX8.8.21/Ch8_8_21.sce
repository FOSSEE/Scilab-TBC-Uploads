kclc
clear
disp("Example 8.21")
printf("\n")
disp("Add the following binary numbers")
disp("a)11011 & 10110 b)1100 & 111 c)10.1011 & 11.011")
//Given binary number
i=1;w=1
a=11011
b=10110
//Given binary number
i=1;w=1
bin=11.101
//separating integer part 
IPa=floor(a)
IP1a=IPa
//separating decimal part
DPa=modulo(a,1) 
DP1a=DPa
//converting decimal value to interger
p=4
DPa=DPa*10^p //should change power of 10 as according to number of digits in decimal digit

//storing each integer digit in I(i)
while(IPa>0)
    Ia(i)=modulo(IPa,10);
    IPa=floor(IPa/10);
    i=i+1;
  end
//storing each decimal digit in D(w)
while(DPa>0)
    Da(w)=modulo(DPa,2)
    DPa=(DPa/10)
    DPa=floor(DPa)
    w=w+1;
  end
  //to do zero padding of remaining erm of D(w)
  if(DP1a<1)
    if(DP1a>0)
if(length(Da)<p)
    q=length(Da)
  for f=q+1 :p
    Da(f)=0
    end
  end
end
end

if(IP1a>0)
for i=1:length(Ia)//checking whether it is a binary number or not
    if(Ia(i)>1) then
        disp('not a binary number')
        abort
    end
  end
end
if(IP1a>0)
IPa=0
for i=1:length(Ia)
//multipliying bits of integer part with their position values and adding 
    IPa=IPa+(Ia(i)*2^(i-1))
  end
  end
  DPa=0
  if(DP1a>0)
    if(DP1a<1)
for z=1:length(Da)
//multipliying bits of decimal part with their position values and adding 
    DPa=DPa+(Da(z)*2^(-1*(length(Da)+1-z)))
  end
end
end
decimala=IPa+DPa
//displaying the output
disp(decimala)

//for b
//Given binary number
i=1;w=1
//separating integer part 
IPb=floor(b)
IP1b=IPb
//separating decimal part
DPb=modulo(b,1) 
DP1b=DPb
//converting decimal value to interger
p=3
DPb=DPb*10^p //should change power of 10 as according to number of digits in decimal digit

//storing each integer digit in I(i)
while(IPb>0)
    Ib(i)=modulo(IPb,10);
    IPb=floor(IPb/10);
    i=i+1;
  end
//storing each decimal digit in D(w)
while(DPb>0)
    Db(w)=modulo(DPb,2)
    DPb=(DPb/10)
    DPb=floor(DPb)
    w=w+1;
  end
  //to do zero padding of remaining erm of D(w)
  if(DP1b>0)
    if(DP1b<1)
if(length(Db)<p)
    q=length(Db)
  for f=q+1 :p
    Db(f)=0
    end
  end
end
end
if(IP1b>0)
for i=1:length(Ib)//checking whether it is a binary number or not
    if(Ib(i)>1) then
        disp('not a binary number')
        abort
    end
  end
end
if(IP1b>0)
IPb=0
for i=1:length(Ib)
//multipliying bits of integer part with their position values and adding 
    IPb=IPb+(Ib(i)*2^(i-1))
  end
  end
DPb=0
if(DP1b>0)
  if(DP1b<1)
  for z=1:length(Db)
//multipliying bits of decimal part with their position values and adding 
    DPb=DPb+(Db(z)*2^(-1*(length(Db)+1-z)))
  end
end
end
decimalb=IPb+DPb
//displaying the output
disp(decimalb)

sum1=decimala+decimalb
i=1;x=1

//separating integer part
IP=floor(sum1)
IP1=IP 
//separating decimal part 
DP=modulo(sum1,1)
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
printf("Sum")
disp(Binary)

