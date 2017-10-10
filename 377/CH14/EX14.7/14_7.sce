eox=3.9*8.85*10^-14;  //say eox=Єox
dox=20*10^-7;
cox=eox/dox;
printf('\n The value of Cox is %fnF/cm^2',cox*10^9);
Vgs=3;
Vt=1;
W=10;
L=1;
u=300;  //say u=μe
disp("Id=μe*cox*W*((Vgs-Vt)^2)/(2*L);");
Id=u*cox*W*((Vgs-Vt)^2)/(2*L);
printf('\n The value of Id is %fmA',Id*10^3);
disp("gm=μe*cox*W*(Vgs-Vt)/L");
gm=u*cox*W*(Vgs-Vt)/L;
printf('\n The value of gm is %fms',gm*10^3);
Vds=0;
gd=u*cox*W*(Vgs-Vt-Vds)/L;
printf('\n The value of gd is %fms',gd*10^3);