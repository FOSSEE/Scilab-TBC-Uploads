//clear//
clc
clear

t = 0:10:200;

function w=f(t,Y)
 
 w =zeros(2,1);

CTe1=2000-59.6*t+.64*t^2-0.00146*t^3-1.047*10^(-5)*t^4
Beta=.1
CTe2=921-17.3*t+.129*t^2-0.000438*t^3+5.6*10^(-7)*t^4
alpha=.8
tau=40
if(t<80)
  CTe=CTe1
else
  CTe=CTe2
end

w(1)=(Beta*Y(2)-(1+Beta)*Y(1))/alpha/tau
w(2)=(Beta*Y(1)-Beta*Y(2))/(1-alpha)/tau
endfunction

X=ode([2000;0],t0,t,f);

t=t';
for i =1:length(t)
CTe1(i)=2000-59.6*t(i)+.64*(t(i)^2)-0.00146*(t(i)^3)-1.047*(10^(-5))*t(i)^4;
CTe2(i)=921-17.3*t(i)+.129*t(i)^2-0.000438*t(i)^3+5.6*10^(-7)*t(i)^4
if(t(i)<80)
  CTe(i)=CTe1(i)
else
  CTe(i)=CTe2(i)
end
end


l1=X(1,: )';
l2=CTe;

plot2d(t,[l1 l2]); 

xtitle( 'Figure E14-3.1', 't', 'CT1,CTe' ) ;
legend(['CT1';'CTe']);



