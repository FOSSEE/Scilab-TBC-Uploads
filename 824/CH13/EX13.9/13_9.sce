//clear//
clc
clear
exec("13.9data.sci");
t = 0:.1:2.52;

function w=f(t,Y)
 
 w =zeros(10,1);

E1=-2.104*t^4+4.167*t^3-1.596*t^2+0.353*t-.004
E2=-2.104*t^4+17.037*t^3-50.247*t^2+62.964*t-27.402
rc=k1*Y(1)*Y(2)
re=k3*Y(2)*Y(4)
ra=-k1*Y(1)*Y(2)-k2*Y(1)
rb=-k1*Y(1)*Y(2)-k3*Y(2)*Y(4)
if t< =1.26
  E=E1
else
  E=E2
  end
  rd=k2*Y(1)-k3*Y(2)*Y(4)
  
  w(1)=ra
w(2) =rb
w(3) =rc
w(6)=Y(1)*E
w(7)=Y(2)*E
w(8)=Y(3)*E
w(4)=rd
w(5) =re
w(9)=Y(4)*E
w(10)=Y(5)*E
endfunction

X=ode([1;1;0;0;0;0;0;0;0;0],t0,t,f);

plot2d(t,X(1,:)); 






