clc;//clears the command window 
clear;//clears all the variables 
format('v',8);//making the default precision to 8 significant digits
i=1;
dec=0.3125;//given decimal number which should be expressed in base 8
temp=modulo(0.3125,1);//separating decimal part from the given number

while(temp~=0) //storing each decimal digit in vector for convenience
    temp=temp*8;
    p(i)=floor(temp);
    i=i+1;
    temp=modulo(temp,1);
end 

temp1=0; //flag bit
for j=1:length(p)
//multipliying bits of decimal part with their position values and adding 
    temp1=temp1+(10^(-1*j)*p(j))
end
disp(temp1);//displays the final output