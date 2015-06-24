clear;
//clc();
ip1=24;
ip2=16;
sb=50;
tot_ip=ip1+ip2;
p=tot_ip/sb;
v=30;
vb=45.1;
vpu=v/vb;
ipu=p/vpu;

zt1pu=0.0537;
zlpu=0.0385+(%i)*0.1157;
zt2pu=0.0535;
vg=vpu+((%i)*zt1pu +zlpu+(%i)*zt2pu)*ipu;

function [mag,theta]=c(r,i)
    mag=sqrt(r*r + i*i)
    theta=atand(i/r)
endfunction


previousprot = funcprot(0)
funcprot(0)

r=real(vg);
i=imag(vg);
[mag,theta]=c(r,i);
vt=mag*15;
printf("\n the terminal voltage at the generator is: %.2f kV",vt);

