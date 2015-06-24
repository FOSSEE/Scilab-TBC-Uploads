clear;
//clc();
function [zpu]=puz(z1pu,sb2,sb1,vb1,vb2)
    zpu=z1pu*(sb2/sb1)*(vb1/vb2)^2;
endfunction

previousprot = funcprot(0)
funcprot(0)


function [parallel]=para(z1,z2)
    parallel=z1*z2/(z1+z2);
endfunction

previousprot = funcprot(0)
funcprot(0)


z1pu=0.20;
sb2=25;
sb1=30;
vb1=11;
vb2=11;
zpu=puz(z1pu,sb2,sb1,vb1,vb2);
printf("\n the per unit reactance of the generator is:  %f",zpu);
xg1=zpu;

z1pu=0.25;
sb2=25;
sb1=25;
vb1=11;
vb2=11;
zpu=puz(z1pu,sb2,sb1,vb1,vb2);
xg2=zpu;
printf("\n the per unit reactance of generator 2 is:   %f",zpu);

z1pu=0.20;
sb2=60;
sb1=30;
vb1=11;
vb2=11;
zpu=puz(z1pu,sb2,sb1,vb1,vb2);
xg11=zpu;
printf("\n the per unit reactnace of generator 1 is on 60MVA base:  %f",zpu);

z1pu=0.25;
sb2=60;
sb1=25;
vb1=11;
vb2=11;
zpu=puz(z1pu,sb2,sb1,vb1,vb2);
xg22=zpu;
printf("\n the per unit reactnace of generator 2 is on 60MVA base: %f",zpu);

//calcultaion of per unit impedance of transformer

z1pu=0.10;
sb2=25;
sb1=60;
vb1=11;
vb2=11;
zpu=puz(z1pu,sb2,sb1,vb1,vb2);
xt1=zpu;
printf("\n the per unit reactnace of generator 1 is on 30MVA base:  %.3f",zpu);

z1pu=0.10;
sb2=60;
sb1=60;
vb1=11;
vb2=11;
zpu=puz(z1pu,sb2,sb1,vb1,vb2);
xt2=zpu;
printf("\n the per unit reactnace of generator 1 is on 60MVA base:  %.3f",zpu);

//calculation of through impedance

zt=para(xg1,xg2) + xt1;
printf("\n the through impedance at 25MVA base is:  j%.3f",zt);

zt1=para(xg11,xg22)+xt2;
printf("\n the through impedance at 60MVA base is:  j%.3f",zt1);

//calcultaion in ohms
sb1=25
zb=vb1^2/sb1;
printf("\n actual impedance in ohms on 25MVA base is: j%.3f",zb*zt);

sb2=60;
zb=vb1^2/sb2;
printf("\n actual impedance in ohms on 60MVA base is: j%.3f",zb*zt1);

