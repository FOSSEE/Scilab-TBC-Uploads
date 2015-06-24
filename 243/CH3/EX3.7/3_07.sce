//Example No. 3_07
//Hexadecimal to Octal 
//Pg No. 49
clear ; close ; clc ;

h = '39.B8' ;
h = strsplit(h,'.') //separating integral part and fractional part
cint = abs(str2code(h(1)))
cfrac = abs(str2code(h(2)))
bint = dec2bin(cint)
bfrac = dec2bin(cfrac)
bint = strcat(bint)
bfrac = strcat(bfrac)

//Integral Part 
i = 1 ;
while length(bint) > 3
    HtoO = strsplit(bint,length(bint)-3)
    bint = HtoO(1)
    oint(i) = HtoO(2)
    i = i+1 ;
end
oint(i) = bint
oint =oint($:-1:1)
oint = bin2dec(oint)

//Fraction Part
i = 1 ;
while length(bfrac)> 3
    HtoO = strsplit(bfrac,3)
    bfrac = HtoO(2)
    ofrac(i) = HtoO(1)
    i = i+1
end
ofrac(i) = bfrac
ofrac = bin2dec(ofrac)

//Combining integral part and fraction part
oct = strcat([strcat(string(oint)),strcat(string(ofrac))],'.')
disp(oct,'Octal number equivalent of Hexadecimal number 39.B8 is ')
