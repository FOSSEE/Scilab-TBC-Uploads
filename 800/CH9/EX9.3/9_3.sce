//clear//
clc
clear
exec("9.3data.sci");
t = 0:1:360;

function w=f(t,Y)
 
 w =zeros(5,1);

k=.39175*exp(5472.7*((1/273)-(1/Y(4))));
Cd=Y(3);

Kc=10^(3885.44/Y(4))
V=Vi+v0*t;
Fb0=Cb0*v0;
ra=-k*((Y(1)*Y(2))-((Y(3)*Cd)/Kc));
Na=V*Y(1)
Nb=V*Y(2)
Nc=V*Y(3)
rb=ra
rc=-ra
Nd=V*Cd
rate=-ra
NCp=cp*(Nb+Nc+Nd+Y(5))+cpa*Na;
w(1)=ra-(v0*Y(1))/V;
w(2) =rb+(v0*(Cb0-Y(2))/V);
w(3) =rc- (Y(3)*v0)/V;
w(4)= (UA*(Ta-Y(4))-Fb0*cp*(1+55)*(Y(4)-T0)+ra*V*dh)/NCp
w(5) =v0*Cw0
endfunction

x=ode([5;0.0001;00.0001;300;6.14],t0,t,f);
scf(1)
plot2d(t,x(4,:));

xtitle( 'Figure E9-3.1', 't', 'T' ) ;

scf(2)
l1=x(1,: )'
l2=x(2,: )'
l3=x(3,: )'
plot2d(t',[l1 l2 l3]); 

xtitle( 'Figure E9-3.2', 't', 'Ca,Cb,Cc' ) ;
legend(['Ca';'Cb';'Cc']);


