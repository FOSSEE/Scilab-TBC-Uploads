//clear//
clc
clear
exec("4__11.sci");
 t = 0:1:500;
function w=f(t,C)
 
 w =zeros(4,1);

 v = v0+v00*t;
 w(1)= -k*C(1)*C(2)-v00*C(1)/v;
 w(2) = -k*C(1)*C(2)+v00*(Cb0-C(2))/v;
 w(3) = k*C(1)*C(2)-v00*C(3)/v;
 w(4) = k*C(1)*C(2)-v00*C(4)/v;
 
endfunction


x=ode([.049;0;0;0],t0,t,f);
l1=x(1,: )'
l2=x(2,: )'
l3=x(3,: )'
for i = 1:length(t)
  rate(1,i)=k*x(1,i )*x(2,i)
  end
scf(1)
plot2d(t',[l1 l2 l3]); 

xtitle( 'Figure E4-11.1 Concentration-time trajectories', 't', 'Ca,Cb,Cc' ) ;
legend(['Ca';'Cb';'Cc']);
scf(2)
plot2d(t,rate)
xtitle( 'Figure E4-11.2 Reaction rate-time trajectories', 't', 'Reaction Rate(mols dm^3)' ) ;




'V
