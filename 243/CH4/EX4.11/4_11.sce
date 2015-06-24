//Example No. 4_11
//Addition of Chain of Numbers
//Pg No. 77
clear ; close ; clc ;

x = 9678 ;
y = 678 ;
z = 78 ;
d = 4 ;  //length of mantissa
fx = x/10^4
fy = y/10^4
fu = fx + fy
Eu = 4
if fu >= 1 then
    fu = fu/10
    Eu = Eu + 1
end
//since length of mantissa is only four we need to maintain only four places in decimal, so
fu = floor(fu*10^4)/10^4
u = fu * 10^Eu
w = u + z
n = length(string(w))
w = floor(w/10^(n-4))*10^(n-4) //To maintain length of mantissa = 4
disp(w,'w = ')
True_w = 10444
ew = True_w - w
er_w = (True_w - w)/True_w
disp(er_w,'er,w = ',ew,'ew = ',True_w,'True w = ')