clc
disp("Example 8.7")
printf("\n")
disp("convert the following binary numbers to decimal")
disp("a)1011 b)110101 c)10101")
//Given binary number 
bin=1011
i=1 
//storing each integer digit in b(i)
while(bin>0)
    b(i)=modulo(bin,10)
    bin=floor(bin/10)
    i=i+1;
end
//checking whether it is a binary number or not
for i=1:length(b)
    if(b(i)>1) then
        disp('not a binary number')
        abort 
    end
  end
dec=0
for i=1:length(b)
//multipliying bits of integer part with their position values and adding 
    dec=dec+(b(i)*2^(i-1))
end
//displaying the output
printf("decimal format is")
disp(dec)
