clear;
clc;

n=5;//no of elements
Z=0;
z=[ 4 1 1 1; 4 2 1 1; 4 3 1 1; 1 2 1 4; 1 3 1 4];

// z = [ from node | to node| z between nodes | type modification] type modification should be in ascending order

for(i=1:n)
    mcase=z(i,4)
    znew=z(i,3)
    n1=z(i,1)
    n2=z(i,2)
    dim=max(size(Z))
    select mcase
    case 1 then
            if Z(1,1)==0 then
                dim=dim-1
            end
           Z(dim+1, dim+1)=znew
        case 2 then
            Z(1:dim,dim+1)=Z(1:dim, n1)
            Z(dim+1,1:dim)=Z(n1,1:dim)
            Z(dim+1, dim+1)=znew+Z(n1,n1)
        case 3 then
            Z=Z-((Z(1:dim, n2)*Z(n2,1:dim))/(znew+Z(n2,n2)))
        case 4 then
            Z=Z-(((Z(1:dim, n1)-Z(1:dim, n2))*(Z(n1,1:dim)-Z(n2,1:dim)))/(znew+Z(n2,n2)+Z(n1,n1)-(2*+Z(n1,n2))))
        else
            break
    end
end
disp(Z)
