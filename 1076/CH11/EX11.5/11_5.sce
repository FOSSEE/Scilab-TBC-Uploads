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
Z1=Z;
Z2=Z;

n=5;
Z=0;
z=[ 0 1 .05*%i 1; 0 2 .06*%i 1; 2 3 .15*%i 2;3 4 .07*%i 2; 0 4 .14*%i 3];

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
Z0=Z;

Ib=262.4;
Vb=220;
E=1
V=ones(1,4);

I3(3,1)=E/(Z1(3,3)+Z2(3,3)+Z0(3,3));
I3(1,1)=I3(3,1)
I3(2,1)=I3(3,1)
i3=I3*Ib
a=exp(%i * 2*%pi/3)
A=[1 1 1; 1 a^2 a; 1 a a^2]
I=A*i3;
//I=round(I*100)/100;
mprintf("(a)\nLine currents at bus 3\nIa = %.2f ang ( %.0f ) deg A,\nIb = %.2f ang ( %.0f ) deg A,\nIc = %.2f ang ( %.0f ) deg A",abs(I(1)),acotd(real(I(1))/imag(I(1)))-180,abs(I(2)),acotd(real(I(2))/imag(I(2)))-180,abs(I(3)),acotd(real(I(3))/imag(I(3)))-180)


V2(1,1)=-1* Z0(2,3)*I3(3,1);
V2(2,1)=E-( Z1(2,3)*I3(1,1));
V2(3,1)=-1* Z2(2,3)*I3(2,1);
v=A*V2;
V=Vb*v/sqrt(3);
mprintf("\n(b)\nLine voltages at bus 2\nVa = %.2f ang ( %.2f ) degKv,\nVb = %.2f ang ( %.2f ) degkV,\nVc = %.2f ang ( %.2f ) degkV",abs(V(1)),atand(imag(V(1))/real(V(1))),abs(V(2)),atand(imag(V(2))/real(V(2)))+180,abs(V(3)),atand(imag(V(3))/real(V(3)))+180)
