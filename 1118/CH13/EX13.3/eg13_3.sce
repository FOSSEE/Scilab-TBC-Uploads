clear;
 //clc();
 
 
 function [mag,theta]=c(r,i)
    mag=sqrt(r*r + i*i)
    theta=atand(i/r)
endfunction


previousprot = funcprot(0)
funcprot(0)


function [r,i]=d(mag,theta)
    r=mag*cosd(theta);
    i=mag*sind(theta);
    
endfunction



previousprot = funcprot(0)
funcprot(0)

vr=275;
 vrl=vr*1000;
 pf=.9;
 vrp=vrl/sqrt(3);
 vs=290;
 
magA=.94;
mag=magA;
thetaA=1;
theta=thetaA;
[r,i]=d(mag,theta);
A=complex(r,i);

magB=107;
mag=magB;
thetaB=78;
theta=thetaB;
[r,i]=d(mag,theta);
B=complex(r,i);
pr=300*10^6;
ir=pr/(sqrt(3)*vrl*pf);
mag=ir;
theta=-acosd(0.9);
 [r,i]=d(mag,theta);
ir=complex(r,i);
vsp=A*vrp+B*ir;
vsl=sqrt(3)*vsp;
printf("The line voltage at the sending end:");
disp(vsl)
pm=(vs*vr/magB) - ((magA*vr^(2)/magB)*cosd(thetaB-thetaA));
 printf("\n the maximum power is:  %.2f MW\n",pm);

//determining the rating of the syncronous phase modifier

pl=450;
pr=pl*pf;
pr0=-(vr^2)*magA*cosd(thetaB-thetaA)/magB;
qr0=-(vr^2)*magA*sind(thetaB-thetaA)/magB;
rhor=vs*vr/magB;
q=sqrt(rhor^(2) - (pr - pr0)^(2)) +  qr0;

qpm=pr*tand(acosd(0.9)) - q;
printf("\n the rating of the phase modifier is:  %.2f MVAr",qpm);
