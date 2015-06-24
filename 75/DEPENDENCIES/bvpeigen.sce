function [x,y,lam] = BVPeigen1(L,n)

Dx = L/(n-1); 
x=[0:Dx:L]; 
a = 1/Dx^2; 
k  = n-2;  
   
A = zeros(k,k);
for j = 1:k
    A(j,j) = 2*a;
end;
for j = 1:k-1
    A(j,j+1) = -a;
    A(j+1,j) = -a;
end;

exec eigenvectors.sce

[yy,lam]=eigenvectors(A);
//disp('yy');disp(yy);

y = [zeros(1,k);yy;zeros(1,k)];
//disp('y');disp(y);


xmin=min(x);xmax=max(x);ymin=min(y);ymax=max(y);
rect = [xmin ymin xmax ymax];

if k>=5 then
   m = 5;
else
   m = k;
end


endfunction