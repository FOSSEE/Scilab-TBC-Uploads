//Example No. 4_01
//Greatest precision
//Pg No. 63
clear ; close ; clc ;

a = '4.3201'
b = '4.32'
c = '4.320106'
na = length(a)-strindex(a,'.')
mprintf('\n %s has a precision of 10^-%i\n',a,na)
nb = length(b)-strindex(b,'.')
mprintf('\n %s has a precision of 10^-%i\n',b,nb)
nc = length(c)-strindex(c,'.')
mprintf('\n %s has a precision of 10^-%i\n',c,nc)
[n,e] = max(na,nb,nc)
if e ==1 then
    mprintf('\n The number with highest precision is %s\n',a)
elseif e == 2
    mprintf('\n The number with highest precision is %s\n',b)
else
    mprintf('\n The number with highest precision is %s\n',c)
end
