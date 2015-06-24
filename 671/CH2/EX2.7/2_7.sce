function p=parallel(r1,r2)
    p=r1*r2/(r1+r2)
endfunction

Req=parallel(15,30)

//KCL at nodes 1 and 2
A=[3,-1;-3,5]
V=inv(A)*[80;-360]

disp(V(1))

