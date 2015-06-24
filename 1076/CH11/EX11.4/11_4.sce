clear;
clc;

n=5;
Z=0;
z=[ 0 1 .25*%i 1; 1 2 .06*%i 2; 2 3 .05*%i 2;3 4 .07*%i 2; 0 4 .2*%i 3];

for(i=1:n)
    mcase=z(i,4)
    znew=z(i,3)
    n1=real(z(i,1))
    n2=real(z(i,2))
    dim=max(size(Z))
    select mcase
        case 1 then
            if Z(1,1)==0 then
                dim=dim-1
            end
           Z(dim+1, dim+1)=znew
        case 2 then
            Z(dim+1,dim+1)=znew+Z(n1,n1)
            Z(1:dim,dim+1)=Z(1:dim, n1)
            Z(dim+1,1:dim)=Z(n1,1:dim)
        case 3 then
            
            Z=Z-((Z(1:dim, n2)*Z(n2,1:dim))/(znew+Z(n2,n2)))
        case 4 then
            Z=Z-(((Z(1:dim, n1)-Z(1:dim, n2))*(Z(n1,1:dim)-Z(n2,1:dim)))/(znew+Z(n2,n2)+Z(n1,n1)-(2*+Z(n1,n2))))
        else
            break
    end
end

E=1
V=ones(1,4);
Ib=262.4;
i2=V(1,2) / Z(2,2);
I2=Ib*i2;

Ia=I2 * exp(%i * 0);
Ib=I2 * exp(%i *-2* %pi /3);
Ic=I2 * exp(%i *2 * %pi /3);
mprintf("(a)\nLine currents at bus 2\nIa = %.2f ang ( %.0f ) deg A,\nIb = %.2f ang ( %.0f ) deg A,\nIc = %.2f ang ( %.0f ) deg A",abs(Ia),acotd(real(Ia)/imag(Ia))-180,abs(Ib),acotd(real(Ib)/imag(Ib)),abs(Ic),acotd(real(Ic)/imag(Ic)))


Vb=220;
v3=E* (1-(Z(3,2)/Z(2,2)))
V3=v3*Vb/sqrt(3);
Va=V3 * exp(%i * 0);
Vb=V3 * exp(%i *-2* %pi /3);
Vc=V3 * exp(%i *2 * %pi /3);
mprintf("\n(b)\nLine voltages at bus 2\nVa = %.3f ang ( %.2f ) degKv,\nVb = %.3f ang ( %.2f ) degkV,\nVc = %.3f ang ( %.2f ) degkV",abs(Va),atand(imag(Va)/real(Va)),abs(Vb),atand(imag(Vb)/real(Vb))+180,abs(Vc),atand(imag(Vc)/real(Vc))+180)

