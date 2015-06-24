function J= jacobianmat (f1,f2,h,k)
    J=zeros(2,2);
J(1,1)=(f1(1+h,1)-f1(1,1))/2*h;

J(1,2)=(f1(1,1+k)-f1(1,1))/2*k;
J(2,1)=(f2(1+h,1)-f2(1,1))/2*h;
J(2,2)=(f2(1,1+k)-f2(1,1))/2*k;
endfunction