function P= hermiteinterpol(x,f,fp)
    X=poly(0,"X");
     function f0=L0(X)
          
  f0=(X-x(2))*(X-x(3))/((x(1)-x(2))*(x(1)-x(3)))
   endfunction;
 a0=[1-2*(X-x(1))*numdiff(L0,x(1))];
L0=(X-x(2))*(X-x(3))/((x(1)-x(2))*(x(1)-x(3)));
   A0=a0*L0*L0;
   disp(A0)
    B0=(X-x(1))*L0^2;
    
     X=poly(0,"X");
   
   function f1=L1(X)
        
  f1=(X-x(1))*(X-x(3))/((x(2)-x(1))*(x(2)-x(3)))
   endfunction;
a1=[1-2*(X-x(2))*0];
L1=(X-x(1))*(X-x(3))/((x(2)-x(1))*(x(2)-x(3)));
A1=a1 *L1*L1;
disp(A1)
 B1=(X-x(2))*L1^2;
   function f2=L2(X)
        
  f2=(X-x(1))*(X-x(2))/((x(3)-x(1))*(x(3)-x(2)))
   endfunction;
a2=[1-2*(X-x(3))*numdiff(L2,x(3))];
L2=(X-x(1))*(X-x(2))/((x(3)-x(1))*(x(3)-x(2)));
A2=a2 *L2*L2;
disp(A2)
  B2=(X-x(3))*L2^2;
   
  
    
    P=A0*f(1)+A1*f(2)+A2*f(3)+B0*fp(1)+B1*fp(2)+B2*fp(3);
endfunction