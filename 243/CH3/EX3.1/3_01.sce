//Example No. 3_01
//Binary to decimal
//Pg No. 45
clear ;close ; clc ;

b = '1101.1101'
v = strsplit(b,'.')    //splitting integral part and fraction part
integralp = str2code(v(1))//converting strings to numbers
fractionp = str2code(v(2))
li = length(integralp)  //lenght of integral part
lf = length(fractionp)  // and fractional part
di = 0 ;//Initializing integral part and decimal part
df = 0 ;
for i = 1:li
    di = 2*di+integralp(i)
end
for i = lf:-1:1
    df = df/2 + fractionp(i)
end
df = df/2 ;
d = di + df ; //Integral and fractional parts
disp(d,'Decimal value = ')