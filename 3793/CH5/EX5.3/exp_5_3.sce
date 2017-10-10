clear;
clc;
function [Ecom,Emag]=vcurves(Prtd,Xs,Vt,Phi,K);
    index=1;
    if index==1;
        X= input('percentage load');
        Pg=X*Prtd;
        Vt=Vt/sqrt(3);
        pfang=Phi*%pi/180;
        x=pfang:-.005:-pfang;
        Pg=Pg*ones(1,length(x));
        Ia=Pg./(3*abs(Vt)*cos(x));
        Iacom=Ia.*(cos(x)+%i*sin(x));
        Ecom=Vt+%i*Xs*Iacom;
        Emag=abs(Ecom);
        Ifld=Emag*1000/K;
        plot(Ifld,Ia,'k');
        
        set(gca(),"auto_clear","off");
        return;
        
        plot(Ifld,Ia,'k-');
        return;
       
        plot(Ifld,Ia,'k-.');
        return;
        
        plot(Ifld,Ia,'k.');
        return;
        
        set(gca(),"auto_clear","on");
        
       
        
        else
     
    end
endfunction
Prtd=36;
Vt=33;
Xs=10;
Phi=70;
K=1500;

[Ecom,Emag]=vcurves(Prtd,Xs,Vt,Phi,K);
[Ecom,Emag]=vcurves(Prtd,Xs,Vt,Phi,K);
[Ecom,Emag]=vcurves(Prtd,Xs,Vt,Phi,K);
[Ecom,Emag]=vcurves(Prtd,Xs,Vt,Phi,K);
index=0;

xlabel('Field current in amperes');
ylabel('Armature current in amp');
title('Plot of V-curves of a Synchronous machine');

