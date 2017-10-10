
//Euclid's extended algorithm to calculate inverse of n modulo p

function [ans]=mod_inv(n,p)
    p_ = p
    q = []
    m = []
    i=1
    r = 1
    while r>=0
        if i<3
            m(i,1) = i-1
        else
            m(i,1) = m(i-2,1) - m(i-1,1)*q(i-2,1)
            if m(i,1)<0
                m(i,1) = m(i,1)+p_
            end
            m(i,1) = modulo(m(i,1),p_)
        end
        if r==0
            break
        end  
        q(i,1) = int(p/n)
        r = modulo(p,n)
        p = n
        n = r
        i = i+1
    end
    ans = m(i,1)
endfunction
