clc
clear
disp('example13_5')
vb=33
pb=20;zb=vb^2/pb   //base voltage and base power
pa1=10;pa2=10;xa1=0.08;xa2=0.08;  //given power and reactance for different branches
pbb=20;xb=0.06;pc=15;xc=0.12;pd=20;xd=0.08;
xab=2.17;xbc=3.26;xcd=1.63;xda=4.35;
xap1=xa1*pb/pa1;
xap2=xa2*pb/pa2;xap=xap1*xap2/(xap1+xap2)
xbp=xb*pb/pbb;
xcp=xc*pb/pc;
xdp=xd*pb/pd;    //generators reactance in per unit
xabp=round(xab*100/zb)/100;
xbcp=round(xbc*100/zb)/100;
xcdp=round(xcd*100/zb)/100;
xdap=round(xda*100/zb)/100  //reactance in per unit between bus
function [s1,s2,s3]=del2star(d12,d23,d31)
    dsum=d12+d23+d31
    s1=d12*d31/(dsum)
    s2=d12*d23/(dsum)
    s3=d31*d23/dsum
endfunction
function [d12,d31,d23]=star2del(s1,s2,s3)
    d12=s1+s2+(s1*s2)/s3
    d23=s2+s3+(s2*s3)/s1
    d31=s3+s1+(s3*s1)/s2
endfunction
[xac,xrc,xra]=star2del(xcdp,xdap,xdp)
rc=xrc*xcp/(xrc+xcp)
ra=xra*xap/(xra+xap)
[xpr,xpc,xpa]=del2star(xac,rc,ra)
xf1=xbcp+xpc
xf2=xpr+xabp
xf=xf1*xf2/(xf1+xf2)
xfr=xf+xpa
xx=xfr*xbp/(xfr+xbp)
netr=xx //net reactance
fkva=pb*1000/xx
printf("the rating of circuit breaker should be %d KVA, or %d MVA",fkva,fkva/1000)
