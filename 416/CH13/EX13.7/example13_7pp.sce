clc
clear
disp('example13_7')
xf=complex(0,0.04)
pf=0.8;ph=acosd(pf)
v=1;i=1;//let v and i
vb=v+i*xf*(complex(cosd(ph),-sind(ph)))
iv=vb-abs(v);
printf("bus bar voltage %.4f.p.u at angle %.1f\n increase in voltage %.4f =%.4fpersent",abs(vb),atand(imag(vb)/real(vb)),iv,iv*100)