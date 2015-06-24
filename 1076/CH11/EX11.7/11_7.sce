clear;
clc;

no=4;
Z=0;
z=[ 4 1 .5*%i 1; 4 2 .4*%i 1; 1 3 .2*%i 2; 2 3 .1*%i 4];

for(i=1:no)
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


m=1
n=3
p=1
q=4
no2=4
znew=.5*%i
zm=.1*%i
za=.2*%i

for j=1:no2
    if j==q then
        Z(q,q)=Z(p,q)-((zm/za)*(Z(m,q)-Z(n,q)))-((zm*zm/za)-znew);
    else
        Z(q,j)=Z(p,j)-((zm/za)*(Z(m,j)-Z(n,j)))
        Z(j,q)=Z(q,j)
    end
end
Z=round(Z*1e5)/1e5
disp(Z)
