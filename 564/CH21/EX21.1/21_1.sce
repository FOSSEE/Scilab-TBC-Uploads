pathname=get_absolute_file_path('21_1.sce')
filename=pathname+filesep()+'21_1data.sci'
exec(filename)
Mx=-Sy*L1;//moment at section AA
Wa=(We*(L-L1)+ W*L1)/L;//width of section AA
Ixx=2*A*(Wa/2)^2 + (1/12)*t*Wa^3;
Sz1=Mx*(Wa/2)/Ixx;
Pz1=Sz1*A;
Syz=Sy +Pz1*((W-We)/L);
deff("[q12]=f(s)","q12=(-Syz/Ixx)*((-s^2 +Wa*s) +(A*Wa/2))");
s=[0:0.01:Wa];
fplot2d(s,f);
xgrid(3)
xtitle('shear flow','-s-','-q12-');
datatipToggle();