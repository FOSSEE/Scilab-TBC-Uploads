clear;
clc;
function [S,pin,deltam,itr,delta1]=pinstab (V,X1,Xt,Xd,pf,typee,tolr);
    Xtot=X1+Xt+Xd;
    Pu=input('Generator  output power');
    phi=acosd(pf);
    Qu=Pu*tand(phi);
    if typee==0 
        S=Pu+%i*Qu;
    else
        S=Pu-%i*Qu;
    end
    I=conj(S)/conj(V);
    Edash=V+I*(%i*Xtot);
    Edash=abs(Edash);
    delta0=asin(Pu*Xtot/(Edash*V));
    itr=0;
    deltam=input('initial estimate of deltam');
    ndeltam=0;
    difff=abs(ndeltam-deltam);
    while difff > tolr;
        itr=itr+1;
        fdeltam=cos(delta0)-(deltam-delta0)*sin(deltam)-cos(deltam);
        dfdeltam=(deltam-delta0)*cos(deltam);
        ndeltam=deltam+fdeltam/dfdeltam;
        difff=abs(ndeltam-deltam);
        deltam=ndeltam;
        
    end
    delta1=%pi-deltam;
    pin=(Edash*V/Xtot)*sin(delta1);
    deltam=deltam*180/%pi;
    delta1=delta1*180/%pi;
    mprintf("Magnitude of power input without loosing synchronism is %.4f",pin);
    
    
    
    
endfunction
V=1;
X1=.15;
Xt=.2;
Xd=.15;
pf=.8;
typee=0;
tolr=.001;
[S,pin,deltam,itr,delta1]=pinstab (V,X1,Xt,Xd,pf,typee,tolr);
