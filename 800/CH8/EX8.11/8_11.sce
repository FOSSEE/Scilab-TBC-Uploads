//clear//
clc
clear
exec("8.11data.sci");
V = 0:.01:1;

function w=f(V,Y)
 
 w =zeros(4,1);

k1a=10*exp(4000*((1/300)-(1/Y(4))));
k2a=.09*exp(9000*((1/300)-(1/Y(4))))

Ft=Y(1)+Y(2)+Y(3);

Ca=Cto*(Y(1)/Ft)*(To/Y(4))
Cb=Cto*(Y(2)/Ft)*(To/Y(4))
Cc=Cto*(Y(3)/Ft)*(To/Y(4))
r1a=-k1a*Ca;
r2a=-k2a*Ca^2;

w(1)=r1a+r2a;
w(2)=-r1a;

w(3)=-r2a/2;
w(4)=(4000*(373-Y(4))+(-r1a)*20000+(-r2a)*60000)/(90*Y(1)+90*Y(2)+180*Y(3));
endfunction

x=ode([100;0;0;423],V0,V,f);

scf(1)
plot2d(V,x(4,:)); 

xtitle( 'Figure E8-11.1', 'V', 'T' ) ;

scf(2)

l1=x(1,: )'
l2=x(2,: )'
l3=x(3,: )'
plot2d(V',[l1 l2 l3]); 

xtitle( 'Figure E8-11.2', 'V', 'Fa,Fb,Fc' ) ;
legend(['Fa';'Fb';'Fc']);
