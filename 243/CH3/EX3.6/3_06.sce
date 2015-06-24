//Example No. 3_06
//Octal to Hexadecimal 
//Pg No. 49 
clear ; close ; clc ;

oct = '243' ;
u = str2code(oct)
n = length(u)
for i = 1:n
    b(i) = dec2bin(u(i)) //Converting each digit to binary equivalent
    if length(b(i)) == 2 then       //making the binary equivalents into a groups of triplets
        b(i) = strcat(['0',b(i)])
    elseif length(b(i)) == 1
        b(i) = strcat(['0','0',b(i)])
    end
end
bin = strcat(b) //combining all the triplets
i = 1 ;
while length(bin) > 4
    OtoH = strsplit(bin,length(bin)-4) //splitting the binary equivalent into groups of binary quadruplets
    bin = OtoH(1)
    h(i) = OtoH(2)
    i = i+1 
end
h(i) = bin ;
h = h($:-1:1)
h = bin2dec(h)
h = dec2hex(h)
h = strcat(h)

disp(h,'Hexadecimal equivalent of octal number 243 is ')
