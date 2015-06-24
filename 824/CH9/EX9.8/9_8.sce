//clear//
clc
clear
exec("9.8data.sci");
t = 0:.01:1.5;

function w=f(t,Y)
 
 w =zeros(4,1);

k1a=1.25*exp((9500/1.987)*((1/320)-(1/Y(4))));
k2b=0.08*exp((7000/1.987)*((1/290)-(1/Y(4))));
ra=-k1a*Y(1);
V=100+vo*t;
rc=3*k2b*Y(2);
rb=k1a*(Y(1)/2)-k2b*Y(2);
w(1)=ra+(Cao-Y(1))*vo/V;
w(2)=rb-Y(2)*vo/V;
w(3)=rc-Y(3)*vo/V; w(4)=(35000*(298-Y(4))-Cao*vo*30*(Y(4)-305)+((-6500)*(-k1a*Y(1))+(8000)*(-k2b*Y(2)))*V)/((Y(1)*30+Y(2)*60+Y(3)*20)*V+100*35);
endfunction

x=ode([1;0;0;290],t0,t,f);


scf(1)
l1=x(1,: )'
l2=x(2,: )'
l3=x(3,: )'
plot2d(t',[l1 l2 l3]); 

xtitle( 'Figure E9-8.1', 't', 'Ca,Cb,Cc' ) ;
legend(['Ca';'Cb';'Cc']);

scf(2)
plot2d(t,x(4,:)); 

xtitle( 'Figure E9-8.2', 't', 'T' ) ;



