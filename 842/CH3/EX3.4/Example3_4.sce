//clear//
//Example3.4:CTFS coefficients of a periodic signal 
//x(t) = 1+sin(Wot)+2cos(Wot)+cos(2Wot+%pi/4)
clear;
close;
clc;
t = 0:0.01:1;
T = 1;
Wo = 2*%pi/T;
xt =ones(1,length(t))+sin(Wo*t)+2*cos(Wo*t)+cos(2*Wo*t+%pi/4);
for k =0:5
  C(k+1,:) = exp(-sqrt(-1)*Wo*t.*k);
  a(k+1) = xt*C(k+1,:)'/length(t);
  if(abs(a(k+1))<=0.1) 
    a(k+1)=0;
  end
end
a =a';
a_conj =conj(a);
ak = [a_conj($:-1:1),a(2:$)];
Mag_ak = abs(ak);
for i = 1:length(a)
  Phase_ak(i) = atan(imag(ak(i))/(real(ak(i))+0.0001));
end
Phase_ak = Phase_ak'
Phase_ak = [Phase_ak(1:$) -Phase_ak($-1:-1:1)];
figure
subplot(2,1,1)
a = gca();
a.y_location = "origin";
a.x_location = "origin";
plot2d3('gnn',[-k:k],Mag_ak,5)
poly1 = a.children(1).children(1);
poly1.thickness = 3; 
title('abs(ak)')
xlabel('                                                       k')
subplot(2,1,2)
a = gca();
a.y_location = "origin";
a.x_location = "origin";
plot2d3('gnn',[-k:k],Phase_ak,5)
poly1 = a.children(1).children(1);
poly1.thickness = 3; 
title('<(ak)')
xlabel('                                                       k')
