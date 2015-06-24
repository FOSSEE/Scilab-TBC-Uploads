//Example No. 4_02
//Accuracy of numbers
//Pg No. 63
clear ;close ;clc ;

function n = sd(x)
    nd = strindex(x,'.')  //position of point
    num = str2code(x)
    if isempty(nd) & num(length(x)) == 0 then
        mprintf('Accuracy is not specified\n')
        n = 0 ;
    else
        if num(1)>= 1 & isempty(nd) then
            n = length(x)
        elseif num(1) >= 1 & ~isempty(nd) then
                n = length(x) - 1
        else
            for i = 1:length(x)
                if num(i) >= 1 & num(i) <= 9 then
                    break
                end
            end
            n = length(x)- i + 1
        end
    end
endfunction
a = '95.763'
na = sd(a)
mprintf('%s has %i significant digits\n',a,na)
b = '0.008472'
nb = sd(b)
mprintf('%s has %i significant digits.The leading or higher order zeros are only place holders\n',b,nb)
c = '0.0456000'
nc = sd(c)
mprintf('%s has %i significant digits\n',c,nc)
d = '36'
nd = sd(d)
mprintf('%s has %i significant digits\n',d,nd)
e = '3600'
sd(e)
f = '3600.00'
nf = sd(f)
mprintf('%s has %i significant digits\n',f,nf)