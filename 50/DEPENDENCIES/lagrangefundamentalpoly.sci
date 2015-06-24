function P2=lagrangefundamentalpoly(x,f,n)
    [nrx,ncx]=size(x)
    [nrf,ncf]=size(f)
if ((nrx<>1)|(nrf<>1)) then
	error('x or f, or both, not column vector(s)');
	abort;
end;
if ((ncx<>ncf)) then
	error('x and f are not of the same length');
	abort;
end;

 X=poly(0,"X");
L=zeros(n);

P2=0;
for i=1:n+1
    L(i)=1;
   for j=1:n+1
       if  i~=j then
               L(i)=L(i)*(X-x(j))/(x(i)-x(j))
       end;
end;
P2=P2+L(i)*f(i); 
end;


endfunction


