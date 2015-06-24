pathname=get_absolute_file_path('6_4.sce')
filename=pathname+filesep()+'6_4data.sci'
exec(filename)
P=[1 P1(1) P1(2) P1(1)*P1(2);
   1 P2(1) P2(2) P2(1)*P2(2);
   1 P3(1) P3(2) P3(1)*P3(2);
   1 P4(1) P4(2) P4(1)*P4(2)];
alpha1=inv(P)*u;
alpha2=inv(P)*v;
alpha=[alpha1;alpha2];
deff("[Ex]=f(y)","Ex=alpha(2)+ y*alpha(4)");//εx
deff("[Ey]=f1(x)","Ey=alpha(7)+ x*alpha(8)");//εy
function[G]=Gxy(x,y)//γxy
    G=x*alpha(4) +y*alpha(8) +alpha(3)+alpha(6);
endfunction
//at the centre
Pc(1)=(P1(1)+P3(1))/2;
Pc(2)=(P1(2)+P3(2))/2;
Sy=(E/(1-V^2))*(f1(Pc(2)) +V*f(Pc(1)));
Sx=(E/(1-V^2))*(f(Pc(1)) +V*f1(Pc(2)));
gxy=Gxy(0,0);
txy=(E/(1-V^2))*0.5*(1-V)*gxy;//τxy
printf("\nσx: %f N/mm^2",Sx);
printf("\nσy: %f N/mm^2",Sy);
printf("\nτxy: %f N/mm^2",txy);