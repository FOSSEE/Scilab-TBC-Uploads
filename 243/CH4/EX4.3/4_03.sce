//Example No. 4_03
//Pg No. 64
clear ; close ; clc ;

a = 0.1
b = 0.4
for i = 1:8
    afrac(i) = floor(a*2)
    a = a*2 - floor(a*2)
    bfrac(i) = floor(b*2)
    b = b*2 - floor(b*2)
end
afrac_s = '0' + '.' + strcat(string(afrac)) //string form binary equivalent of a i.e 0.1
bfrac_s = '0' + '.' + strcat(string(bfrac))
mprintf('\n 0.1_10 = %s \n 0.4_10 = %s \n ', afrac_s , bfrac_s)
for j = 8:-1:1
    summ(j) = afrac(j) + bfrac(j)
    if summ(j) > 1 then
        summ(j) = summ(j)-2
        afrac(j-1) = afrac(j-1) + 1
    end
end
summ_dec = 0
for k = 8:-1:1
    summ_dec = summ_dec + summ(k)
    summ_dec = summ_dec*1/2 
end
disp(summ_dec,'sum =')
disp('Note : The answer should be 0.5, but it is not so.This is due to the error in conversion from decimal to binary form.')