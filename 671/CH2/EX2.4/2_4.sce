function p=parallel(r1,r2)
    p=r1*r2/(r1+r2)
endfunction


v=150

Req=1000*parallel(parallel(10,5),4)
i1=v/(2000+0.2*1000+Req)
v1=i1*0.2*1000
VReq=Req*i1
i2=VReq/4000

disp(v1)
disp(i2)
