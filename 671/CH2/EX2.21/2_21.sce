function p=parallel(r1,r2)
    p=r1*r2/(r1+r2)
endfunction

//deactivate voltage source

i11=4*6/8
i21=4*2/8
v11=i11*2
v21=1*1

//deactivate current source
Req=parallel(2,7)

v22=8*Req/(2+Req)
v12=v22*(2/(2+5))

v1=v11+v12
v2=v21+v22

disp(v2,v1)