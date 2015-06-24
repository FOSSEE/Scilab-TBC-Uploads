//clear//
clc
clear
//this code is only for Part C
exec("9.2data.sci");
 t = 55:1:121;
function w=f(t,Y)
 
 w =zeros(2,1);



k=.00017*exp(11273/(1.987)*(1/461-1/Y(1)))
Qr=UA*(Y(1) -298)
Theata=Nbo/Nao
ra=-k*(Nao**2)*(1-Y(2))*(Theata-2*Y(2))/(U**2)
rate=-ra
Qg=ra*U*(dH)
w(1)=(Qg-Qr)/NCp
w(2)=(-ra)*U/Nao
endfunction

x=ode([467.992;0.0423],t0,t,f);


plot2d(t,x(1,:)); 

xtitle( 'Figure E9-2.2', 't ', 'T (oC)' ) ;


