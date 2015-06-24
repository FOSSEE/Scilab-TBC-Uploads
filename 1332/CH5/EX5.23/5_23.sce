//Example 5.23
//Bairstow Hitchcock Method
//Page no. 187
clc;clear;close;
deff('y=f(x,p,q)','y=x^2+p*z+q')
a=[1,-1,1,-1,1]
a=a';a=[a,a,a,a,a]
printf('Iteration-->')
for i=1:5
    printf('\t%i\t',i)
end
printf('\n------------------------------------------------------------------------------------------')
p(1,1)=-1.2;q(1,1)=0.95;
s=["b1","b2","b3","b4","c1","c2","c3","c4","c","dp","dq","p","q"]
//s1=[b1;b2;b3;b4;c1;c2;c3;c4;c;dp;dq;p;q]
for i=1:5
    b(1,i)=0;b(2,i)=a(1,i);c(1,i)=0;c(2,i)=a(1,i);
       for k=1:4
           b(k+2,i)=a(k+1,i)-p(1,i)*b(k+1,i)-q(1,i)*b(k,i)
           c(k+2,i)=b(k+2,i)-p(1,i)*c(k+1,i)-q(1,i)*c(k,i)
       end
      cb(1,i)=c(6,i)-b(6,i);
      dq(1,i)=(b(6,i)*c(4,i)-b(5,i)*cb(1,i))/(c(4,i)^2-cb(1,i)*c(3,i))
       dp(1,i)=(b(5,i)*c(4,i)-b(6,i)*c(3,i))/(c(4,i)^2-cb(1,i)*c(3,i))
     p(1,i+1)=p(1,i)+dp(1,i);q(1,i+1)=q(1,i)+dq(1,i);
end
for j=1:13
  printf('\n     %s\t\t',s(j))
  if j<5 then
      for i=1:5
          printf('%.9f\t',b(j+2,i))
      end
  elseif j<9 then
      for i=1:5
          printf('%.9f\t',c(j-2,i))
      end
  elseif j<10
      for i=1:5
          printf('%.9f\t',cb(1,i))
      end
      elseif j<11
      for i=1:5
          printf('%.9f\t',dp(1,i))
      end
      elseif j<12
      for i=1:5
          printf('%.9f\t',dq(1,i))
      end
      elseif j<13
      for i=1:5
          printf('%.9f\t',p(1,i+1))
      end
      else
      for i=1:5
          printf('%.9f\t',q(1,i+1))
      end
  end
end
z=poly(0,'z');
a=f(z,p(1,i+1),q(1,i+1));
printf('\n\nRoots for Quadratic Equation Q = ')
disp(a)
a=roots(a)
printf('\n\tare\n')
disp(a(1))
disp(a(2))


