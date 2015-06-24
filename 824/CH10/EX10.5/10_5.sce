//clear//
clc
clear
exec("10.5data.sci");
t = 0:.01:.5;

function w=f(t,Y)
 
 w =zeros(2,1);


ya0=Ca0/Ct0;
X=1-(1+ya0)/(1+Y(2)/Ct0)*Y(2)/Ca0;
w(1)=-kd*Y(1)*Y(2);
w(2) = (Ca0/tau)-((1+ya0)/(1+(Y(2)/Ct0))+tau*Y(1)*k)*Y(2)/tau;
endfunction

x=ode([1;.8],t0,t,f);
Ca0=.8;
Ct0=1
ya0=Ca0/Ct0;
for i=1:length(t)
  X1(i)=1-(1+ya0)/(1+x(2,i)/Ct0)*x(2,i)/Ca0;
  end


l1=x(1,: )'
l2=x(2,: )'
l3=X1;
plot2d(t',[l1 l2 l3]); 

xtitle( 'Figure E10-5.1', 't', 'a,Ca,X' ) ;
legend(['a';'Ca';'X']);





