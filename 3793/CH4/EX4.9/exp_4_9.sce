clear;
clc;
function [A,B,C,D,Vs] = trmlnper(r,L,g,CC,l,Vr,Pr,pf,pftype);
    Vs=zeros(2,1);
    z=r+%i*2*%pi*50*L;
    y=g+%i*2*%pi*50*CC;
    gammma=sqrt(z*y);
    Zc=sqrt(z/y);
    mprintf("Line 1 for distributed and 2 for lumped(pi equivalent) , 2 for medium lines, 3 for short line\n");
    type1=input ('Type of line');
    if type1==0;
        A=cosh(gammma*l);
        B=Zc*sinh(gammma*l);
        C=sinh(gammma*l)/Zc;
        D=A;
        else
    end
    if type1==1;
        Zd=(z*l*sinh(gammma*l))/(gammma*l);
        Yd=(y*l*tanh(gammma*l/2))/(gammma*l/2);
        A=(1+(Yd*Zd/2));
        B=Zd;
        C=Yd*(1+(Yd*Zd/4));
        D=A;
        else
    end
    if type1==2;
        Z=z*l;
        Y=y*l;
        A=(1+(Y*Z/2));
        B=Z;
        C=Y*(1+(Y*Z/4));
        D=A;
        else
        
    end
    if type1==3;
        Z=z*l;
        A=1;
        B=Z
        C=0;
        D=A;
        else
    end
    Ir=Pr/(sqrt(3)*Vr*pf);
    Vr=Vr/sqrt(3);
    phi=acosd(pf);
    if pftype==0;
        phi=-phi;
        else
    end
    Ir=Ir*(cosd(phi)+%i*sind(phi));
    [Vs]=[A B;C D]*[Vr;Ir];
    vS=abs(Vs(1));
    deltaVs=atand(imag(Vs(1))/real(Vs(1)));
    Is=abs(Vs(2));
    deltaIs=atand(imag(Vs(2))/real(Vs(2)));
    ps=(Vs(1)*(Vs(2))');
    pS=real(ps)*3;
    inlos=3*(pS-Pr);
    effy=(1-inlos/pS)*100;
    reg=(vS-abs(Vr))/(abs(Vr));
    vS=sqrt(3)*vS;
    mprintf("Sending end per phase voltage %.4f+%.4f kV\n",real(Vs(1)),imag(Vs(1)));
mprintf("Ending end line to line voltage %4f kV\n",vS);
mprintf("Sending end current %.4f%.4fj A\n.",real(Vs(2)),imag(Vs(2)));
mprintf("three phase sending power %.4f MW\n",pS);
mprintf("total line loss %.4f MW\n",inlos);
mprintf("efficincy %.4f\n",effy);
mprintf("Regulation %.4f",reg);
    
endfunction

r=.0781;
L=.746*(10^-3);
g=0;
CC=.00995*(10^-6);
Vr=66;
l=130;
Pr=24;
pf=.8;
pftype=0;
[A,B,C,D,Vs] = trmlnper(r,L,g,CC,l,Vr,Pr,pf,pftype);

    



