clear;
//clc();
function [zpu]=puz(z1pu,sb2,sb1,vb1,vb2)
    zpu=z1pu*(sb2/sb1)*(vb1/vb2)^2;
endfunction

previousprot = funcprot(0)
funcprot(0)

z1pu=0.15;
sb2=20;
sb1=20;
vb1=11;
vb2=12.5;
zpu=puz(z1pu,sb2,sb1,vb1,vb2);
printf("\n the per unit reactance of the generator is: %.2f",zpu);
xg=zpu;

zpu=puz(0.15,20,15,11,11);
printf("\n the per unit reactance of the generator is: %.2f",zpu);
xm=zpu;

zpu=puz(0.10,20,25,132,132);
printf("\n the per unit reactance of the generator is: %.2f",zpu);
xt1=zpu;

zpu=puz(0.10,20,20,132,132);
printf("\n the per unit reactance of the generator is: %.2f",zpu);
xt2=zpu;

xtl=((200+(%i)*500))*20/(132)^2;

pl=5;
pf=0.8;
p=pl*pf;
q=pl*0.6;

vpu=1;
sb=20;
rpu=vpu^2*sb*p/(p*p+q*q);
xpu=vpu^2*sb*q/(p*p+q*q);

//when pf is changed to 0.9

vpu=1.1;
im=15*(0.9+(%i)*sqrt(1-0.9^2))/(sb*vpu);

il=(p-(%i)*q)/(sb*vpu);
i=im+il;
zt=(%i)*(xt1+xt2)+xtl;

vg=vpu+zt*i;

function [mag,theta]=c(r,i)
    mag=sqrt(r*r + i*i)
    theta=atand(i/r)
endfunction


previousprot = funcprot(0)
funcprot(0)

[mag,theta]=c(real(vg),imag(vg));
printf("\nthe terminal generator voltage is: %.2f kV",mag*11);
