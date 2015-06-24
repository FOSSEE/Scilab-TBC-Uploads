function p=parallel(r1,r2)
    p=r1*r2/(r1+r2)
endfunction

L=25/1000

//at t=0-
R1=parallel(150,75)
iL_0m=30/2
disp(iL_0m)

R2=parallel(150,50)
ix_0m=R2/(R2+75)*30
disp(ix_0m)


//at t=0+
iL_0p=iL_0m

T=L/(75+50)
iL_inf=0

//at t=0.2ms
t=0.2E-3

iL=iL_inf+(iL_0p-iL_inf)*exp(-t/T)
ix=-iL
disp(ix,iL)