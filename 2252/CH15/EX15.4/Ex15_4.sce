
function[r, theta]=rect2pol(x,y)
    r=sqrt(x^2+y^2)
    theta=atand(y/x)
endfunction
Q=750//total load to be shared
pf=.8//lagging power factor
theta=-acosd(.8)
Q=rect2pol(Q*cos(theta),Q*sin(theta))
Zb=rect2pol(.35,3.3)//per phase impedance of transformer B
Za=rect2pol(.2,1.8)//per phase impedance of transformer A
Qa=Zb*Q/(Za+Zb)
Qb=Za*Q/(Za+Zb)
mprintf("Transformer A of 500 kVA rating shares a load of %f kVA whereas transformer B of 250 kVA rating shares a load of %f kVA", Qa,Qb)
