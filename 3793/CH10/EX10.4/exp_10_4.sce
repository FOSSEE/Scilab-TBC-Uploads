clear;
clc;
Sb=100;
//generator 1
x0=complex(0,.08);
s=100;
v=11;
z=3;
Zb=v^2/s;
X=z/Zb;
x=z*X;
mprintf("Magnitutde of grounding reactor for G1 %.3f\n",x);
//generator 2
s1=50;
x1=complex(0,.05);
sm=25;
xm=complex(0,.05);
z1=x1*(Sb/s1);
zm=xm*(Sb/sm);
mprintf("pu reactance for G2 is %.3f\n",imag(z1));
mprintf("pu reactance for M is %.3f\n",imag(zm));
//transformers
s12=100;
x12=.1;
z12=x12*(Sb/s12);
mprintf("pu reactance for T12 is %.3f\n",imag(z12));
s34=50;
x34=complex(0,.075);
z34=x34*(Sb/s34);
mprintf("pu reactance for T34 is %.3f\n",imag(z34));
s45=50;
x45=complex(0,.08);
z45=x45*(Sb/s45);
mprintf("pu reactance for T45 is %.3f\n",imag(z45));
s67=50;
x67=complex(0,.076);
z67=x67*(Sb/s67);
mprintf("pu reactance for T67 is %.3f\n",imag(z67));
s78=75;
x78=complex(0,.06);
z78=x78*(Sb/s78);
mprintf("pu reactance for T78 is %.3f\n",imag(z78));
vb=132;
zb=vb^2/s;
X11=z/zb;
x11=z*X11;
mprintf("pu reactance for zero sequence is %.3f\n",x11);
Zt23=vb^2/s;
xt23=complex(0,300);
zt23=xt23/Zt23;
mprintf("pu reactance for Tr23 is %.3f\n",imag(zt23));
Zt28=vb^2/s;
xt28=complex(0,250);
zt28=xt28/Zt28;
mprintf("pu reactance for Tr28 is %.3f\n",imag(zt28));
vt=66;
Zt56=vt^2/s;
xt56=complex(0,200);
zt56=xt56/Zt56;
mprintf("pu reactance for Tr56 is %.3f\n",imag(zt56));



