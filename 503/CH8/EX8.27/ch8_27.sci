//to calculate generator terminal voltage,excitation emf,power angle

clc;
Xd=1.48;
Xq=1.24;
Xe=.1;
Xdt=Xd+Xe;
Xqt=Xq+Xe;

MVA=1;
Vb=1;
pf=.9;
phi=acosd(pf);
//(Vt*cosd(phi))^2+(Vt*sind(phi)+Ia*Xe)^2=Vb^2;
//after solving
//Vt^2-.0870*Vt-.99=0;
function [x]=quad(a,b,c)
    d=sqrt(b^2-4*a*c);
    x1=(-b+d)/(2*a);
    x2=(-b-d)/(2*a);
    if(x1<Vb)
        x=x2;
    else
        x=x1;
    end
endfunction
Vt=quad(1,-.0870,-.99);disp(Vt,'terminal voltage(V)');
//after solving
phi=20;

j=sqrt(-1);
Ia=1;
Iaa=Ia*complex(cosd(-phi),sind(-phi));
Ef=Vb+j*Iaa*Xqt;
Eff=abs(Ef);
dl=atand(imag(Ef)/real(Ef));disp(dl,'power angle');
w=dl+phi;
Id=Ia*sind(w);
Ef=Ef+Id*(Xdt-Xqt);
disp(abs(Ef),'excitation emf(V)');