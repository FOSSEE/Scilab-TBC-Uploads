clc;
clear;
vm=100;thetav=0; //voltage amplitude and phase angle
z=1.25;gama=60; //impedance magnitude and phase angle
thetai=thetav-gama; //curent phase angle in degree
theta=(thetav-thetai)*%pi/180; 
im=vm/z;
wt=0:0.05:2*%pi;
v=vm*cos(wt);//instantaneous voltage 
i=im*cos(wt+thetai*%pi/180);//instantaneous current
mprintf("instantaneous current,i(t)=%d cos(wt+(-%d))\n",im,thetai);
p=v.*i;//instantaneous power
mprintf("instantaneous power,p(t)=v(t)*i(t)=%d cos(wt)cos(wt+(%d))",vm*im,thetai);
V=vm./sqrt(2);I=im/sqrt(2); //rms current and voltage
P=V*I*cos(theta);//average power
Q=V*I*sin(theta);//reactive power
S=P+%i*Q;//complex power
pr=P*(1+cos(2*(wt+thetav)));
px=Q*sin(2*(wt+thetav));
PP=P*ones(1,length(wt));//average power of length w for plot 
xline=zeros(1,length(wt));//generates a 0 vector
wt=180/%pi*wt;//converting radian to degree
subplot(2,2,1),plot(wt,v,wt,i,wt,xline);
title("v(t)=vm cos(wt),i(t)=im cos(wt-60)");
xlabel("wt,degrees");
subplot(2,2,2),plot(wt,p,wt,xline);
title("p(t)=v(t)*i(t)");
xlabel("wt,degree");
subplot(2,2,3),plot(wt,pr,wt,PP,wt,xline);
title("active power,pr(t)");
xlabel("wt,degree");
subplot(2,2,4),plot(wt,px,wt,xline);
title("reactive power,px(t)");
xlabel("wt,degree");
