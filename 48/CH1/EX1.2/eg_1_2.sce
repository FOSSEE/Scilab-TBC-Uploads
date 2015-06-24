clc;//clears the command window 
clear;//clears all the variables 
i=1;w=1;
bin=1101.01;//Given binary number which we need to be convert into decimal 
temp1=floor(bin);//separating integer part from the given number
temp2=modulo(bin,1);//separating decimal part from the given number
temp2=temp2*10^3;//converting decimal value to interger for convenience
while(temp1>0)//storing each integer digit in vector for convenience
    p(i)=modulo(temp1,10);
    temp1=floor(temp1/10);
    i=i+1;
end
while(temp2>0)//storing each decimal digit in vector for convenience
    q(w)=modulo(temp2,2);
    temp2=(temp2/10);
    temp2=floor(temp2);
    w=w+1;
end
temp1=0;//flag bit
for i=1:length(p)//checking whether it is a binary number or not
    if(p(i)>1) then
        disp('not a binary number');
        abort; 
    end
end
for i=1:length(p)
//multipliying bits of integer part with their position values and adding 
    temp1=temp1+(p(i)*2^(i-1));
end
temp2=0;//flag bit
for z=1:length(q)
//multipliying bits of decimal part with their position values and adding 
    temp2=temp2+(q(z)*2^(-1*(4-z)));
end
temp=temp1+temp2;
//finally adding both the integer and decimal parts to get total output.
disp(temp);//displaying the output
