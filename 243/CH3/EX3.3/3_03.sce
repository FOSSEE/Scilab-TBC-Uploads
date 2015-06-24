//Example No. 3_03
//Decimal to Binary
//Pg No. 47
clear; close ; clc;

d = 43.375 ;
//Separating integral part and fractional parts
dint = floor(d)
dfrac = d - dint

//Integral Part
i = 1 ;
intp = dec2bin(dint)

//Fractional part
j = 1 ;
while dfrac ~= 0
    fracp(j) = floor(dfrac*2)
    dfrac = dfrac*2 - floor(dfrac*2)
    j = j+1 ;
end
fracp = strcat(string(fracp))

b = strcat([intp,fracp],'.') //combining integral part and fractional part
disp(b,'Binary equivalent = ')