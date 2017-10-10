//Example 9.12
//Conditionally stable system.
xdel(winsid())//close all graphics Windows
clear;
clc;
//------------------------------------------------------------------
//System transfer function and its root locus 

s=poly(0,'s');
num=0.1;
den=(s^2+0.2*s+1)*(s);
Gs=syslin('c',num/den)

//Nyquist plot of the system
nyquist(Gs,0.035,10)
title("Nyquist plot and describing function to determine limit...
 cycle",'fontsize',3);

f=gca();
f.x_location = "origin"
f.y_location = "origin"
h=legend('');
h.visible = "off"
xset("color",2);

// Nyquist Plot of Describing Function for saturation nonlinearity. 
omegat=0.05:0.05:%pi;
a=sin(omegat);
N=0.1;
k=1; 

Keq=2/%pi*(k*asin(N ./a /k)+N ./a .* sqrt(1-(N/k ./a) .^2));
DF_nyq=-1 ./Keq; 

plot(DF_nyq,zeros(1,length(DF_nyq)),'m-.')
exec .\fig_settings.sci; //custom script for setting figure properties
zoom_rect([-0.8 -0.5 0.2 0.5])

//limit cycle points
plot(-0.5,0,'bo');

xset('font size',3)
xstring(-0.78,0.08,"limit cycle point");
xarrows([-0.6;-0.52],[0.1;0.02],-1)
xstring(-0.62,-0.22,"$-\frac{1}{K_{eq}$");
xarrows([-0.55;-0.55],[-0.1;0],-1)
//------------------------------------------------------------------
//Describing Functin for saturation nonlinearity.
Keq=[]
i=1;

for a=0:0.2:10
    if k*a/N > 1 then
    Keq(i,1)=2/%pi*(k*asin(N/a/k)+N/a*sqrt(1-(N/k/a)^2))
    else
    Keq(i,1)=k
    end
    i=i+1;
end

a=0:0.2:10;
a=a';

figure,
plot(a,Keq)
xlabel('$a$');
ylabel('$K_{eq}$');

xset('font size',3);
title("Describing Function for a saturation nonlinearity...
 with N=0.1 and k=1",'fontsize',3);
exec .\fig_settings.sci; //custom script for setting figure properties
zoom_rect([0 0 10 1.1])
//------------------------------------------------------------------

