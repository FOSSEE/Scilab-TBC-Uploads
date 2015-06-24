//find sending end voltage and current and power and efficiency
clear;
clc;
//soltion
//FUNCTIONS
function [z]=rxr(A,B)//Function for the multiplication of rectangular
    z(1)=A(1)*B(1)
    z(2)=A(2)+B(2)
    endfunction

function [a]=r2p(z)//Function for rectangular to polar
    a=z(1)*complex(cosd(z(2)),sind(z(2)))
endfunction
//given
P=50*10^6;//VA
Vrl=110*1000;//V
pf=0.8//power factir
Vr=[Vrl/sqrt(3) 0];
Ir=[P/(sqrt(3)*Vrl) -acosd(pf)];
A=[0.98 3];
B=[110 75];
C=[0.0005 80];
D=[0.98 3];
Z1=rxr(A,Vr);
Z2=rxr(B,Ir);
AV=r2p(Z1);
BI=r2p(Z2);
Vs=AV+BI;
theta1=atand((imag(Vs)/real(Vs)));
printf("Sending end voltage= %.0f V\n",abs(Vs));
Y1=rxr(C,Vr);
Y2=rxr(D,Ir);
CV=r2p(Y1);
DI=r2p(Y2);
Is=CV+DI;
theta2=atand(imag(Is)/real(Is));
printf("Magnitude of sending end current= %d A\n",abs(Is));
phis=theta2-theta1;
Ps=3*abs(Vs)*abs(Is)*cosd(phis);
printf("Sending end power=%.1fMW\n",floor(Ps/10^5)/10);
Pr=P*pf;
n=Pr*100/(floor(Ps/10^5)*10^5);
printf("Transmission Efficiency= %.1f percent",n);
//The value of voltage is 87427 V
