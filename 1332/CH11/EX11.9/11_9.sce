//Example 11.9
//QR Method
//Page no. 360
clc;close;clear;

A=[2,-1,0;-1,2,-1;0,-1,2];
deff('y=c(i,j)','y=A(j,j)/sqrt((A(i,j)^2+A(j,j)^2))')
deff('y=s2(i,j)','y=A(i,j)/sqrt((A(i,j)^2+A(j,j)^2))')
disp(A,'A=')
l0=0;f=1;m=0;s=0;w=0;
for n=1:5
    for j=1:2
        for k=1:2
            V(j,k)=A(j,k)
        end
    end
    disp(V,'V=')
    p=poly(V,'x');
    disp('=0',p);
    a=roots(p);
    for j=1:2
        printf('\na(%i) = %f',j,a(j))
    end
        if(abs(a(1)-V(1,1))<=abs(a(2)-V(1,1)))
            a=a(1)
        else
            a=a(2)
        end
    printf('\na = %f\n',a)
    s=s+a;
    A=A-a*eye()
    R=A;Q=eye(3,3);
    
   for j=1:2
       for i=j+1:3
           for k=1:3             //C matrix evaluation
               for l=1:3
                   if(k==l)
                       if(k==i | k==j)
                           C(k,l)=c(i,j)
                       else
                           C(k,l)=1
                       end
                   end
                   if(k>l)
                       if(k==i & l==j)
                           C(k,l)=-1*s2(i,j)
                      else
                           C(k,l)=0
                       end
                   end
                   if(k<l)
                       if(k==j & l==i)
                           C(k,l)=s2(i,j)
                       else
                           C(k,l)=0
                       end
                   end
               end
          end
           
           R=C*R;
           Q=Q*C';
           
       end
    end
disp(Q,'Q=',R,'R=')
disp(Q*R,'Q*R=')
A=R*Q;
disp(A,'A=')
end
l1=l0+s;
for i=2:3
    for j=2:3
        V(i-1,j-1)=A(i,j)
    end
end
disp(V,'V=')
    p=poly(V,'x');
    disp('=0',p);
    a=roots(p);
    for j=1:2
        printf('\na(%i) = %f',j,a(j))
    end
    l2=l1+a(1)
    l3=l1+a(2)
    disp(l3,'l3=',l2,'l2=',l1,'l1=')
printf('\n\n\nNote : Values of V varies in each step resulting in different results due to error in book calculation')