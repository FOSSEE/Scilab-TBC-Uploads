clear
clc
disp("example10.7")
za=complex(0.03,0.09)
zb=complex(0.1,0.3)
zc=complex(0.03,0.09)
zd=complex(0.04,0.12)
ze=complex(0.04,0.12)
ia=complex(1.5,-0.4)
ib=complex(0.5,-0.2)
ic=complex(1,-0.1)
id=complex(1,-0.2)
ie=complex(1.5,-0.3)
il1=.4
il2=.6
na1=1;nb1=0.6;nc1=0;nd1=.4;ne1=.6
na2=0;nb2=-0.4;nc2=1;nd2=.4;ne2=.6
vl=1
//some thing is messed
v1=vl+za*ia
v2=vl-zb*ib+zc*ic
a1=atan(imag(ia)/real(ia))
a2=atan(imag(ic)/real(ic))
cosa=cos(a1-a2)
cosph1=cos(atan(imag(v1)/real(v1))-a1)
cosph2=cos(atan(imag(v2)/real(v2))-a2)
b11=(na1^2*real(za)+nb1^2*real(zb)+nc1^2*real(zc)+nd1^2*real(zd)+ne1^2*real(ze))/(abs(v1)^2*cosph1)
b22=(na2^2*real(za)+nb2^2*real(zb)+nc2^2*real(zc)+nd2^2*real(zd)+ne2^2*real(ze))/((abs(v2)^2)*cosph2)
bb12=(abs(v1)*abs(v2)*cosph1*cosph2)
ab12=(na2*na1*real(za)+nb2*nb1*real(zb)+nc1*nc2*real(zc)+nd2*nd1*real(zd)+ne2*ne1*0.03)
b12=cosa*ab12/bb12
printf("bus voltages at 2 buses are \nv1=%1.3f+i%1.3f,\nv2=%1.3f+i%1.3f",real(v1),imag(v1),real(v2),imag(v2))
printf("\nloss coffecients are \nb11=%1.5fp.u\nb22=%1.5fp.u\nb12=%1.5fp.u \n",b11,b22,b12)
printf("loss coffecients in actual values is \nb11=%eM(W)-1\nb22=%eM(W)-1\nb12=%eM(W)-1\n",b11/100,b22/100,b12/100)