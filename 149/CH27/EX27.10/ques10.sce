//ques10
disp('Runges method');
function y=f(x,y)
  y=x+y;
endfunction

x=0;
y=1;
h=0.2;
k1=h*f(x,y);
k2=h*f(x+1/2*h,y+1/2*k1);
kk=h*f(x+h,y+k1);
k3=h*f(x+h,y+kk);
k=1/6*(k1+4*k2+k3);
disp('the required approximate value is :-');
y=y+k;
disp(y);
