//Example No. 4_12
//Addition of chain Numbers
//Pg No. 77
clear ; close ; clc ;

x = 9678 ;
y = 678 ;
z = 78 ;
d = 4 ;  //length of mantissa
n = max(length( string(y) ) , length(string(z)))
fy = y/10^n
fz = z/10^n
fu = fy + fz
Eu = n
if fu >= 1 then
    fu = fu/10
    Eu = Eu + 1
end
u = fu * 10^Eu
n = max(length( string(x) ) , length(string(u)))
fu = u/10^4
fx = x/10^4
fw = fu + fx
Ew = 4
if fw >= 1 then
    fw = fw/10
    Ew = Ew + 1
end
//since length of mantissa is only four we need to maintain only four places in decimal, so
fw = floor(fw*10^4)/10^4
w = fw*10^Ew
disp(w,'w = ')
True_w = 10444
ew = True_w - w
er_w = (True_w - w)/True_w
disp(er_w,'er,w = ',ew,'ew = ',True_w,'True w = ')