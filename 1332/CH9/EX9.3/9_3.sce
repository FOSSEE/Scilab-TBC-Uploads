//Example 9.3
//Gram-Schmidt Orthogonalization/Orthonormalization Process
//Page no. 294
clc;clear;close;
deff('y=f(x,a)','y=sqrt(x(1,a)^2+x(2,a)^2+x(3,a)^2+x(4,a)^2)');
deff('y=f1(g,a,h,b)','y=g(1,a)*h(1,b)+g(2,a)*h(2,b)+g(3,a)*h(3,b)+g(4,a)*h(4,b)');

U=[1/sqrt(3),-2/sqrt(7),1,0,0,0;0,1/sqrt(7),0,1,0,0;1/sqrt(3),1/sqrt(7),0,0,1,0;-1/sqrt(3),-1/sqrt(7),0,0,0,1];
for i=1:4
        V(i,1)=U(i,1);
end
for i=1:4
    if(f(V,1)~=0)
        W(i,1)=V(i,1)/f(V,1);
    else
        W(i,1)=0;
    end 
end
for j=2:6
    for i=1:4
        for l=1:4
            k(l,1)=0;
        end
        for l=1:j-1
            for m=1:4
                w(m,1)=W(m,l);
            end
            k=k-(f1(U,j,W,l))*w;
        end
        V(i,j)=U(i,j)+k(i,1);
    end
    for i=1:4
        if(j~=4)
            if(f(V,j)~=0)
                W(i,j)=V(i,j)/f(V,j);
            else
                W(i,j)=0;
            end 
        else
            W(i,j)=0;
        end
    end
    
end
disp(U,'U=')
disp('W=')
printf('\n')
for i=1:4
    for j=1:6
        printf('%.4f\t\t',W(i,j))
    end
    printf('\n')
end
disp('V=')
printf('\n')
for i=1:4
    for j=1:6
        printf('%.4f\t\t',V(i,j))
    end
    printf('\n')
end