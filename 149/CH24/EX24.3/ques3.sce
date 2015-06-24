//ques 2
disp('f(x)=xe^x-cos(x)');
function y=f(x)
  y=x*%e^(x)-cos(x);
endfunction

disp('we are required to find the roots of f(x) by the method of false position');
disp('f(0)=-ve and f(1)=+ve so s root lie between 0 and 1');
disp('finding the roots by false position method');

l=0;
m=1;
for i=1:10
   k=l-(m-l)*f(l)/(f(m)-f(l));
  if(f(k)<0)
    l=k;
  else
    m=k;
  end
end
//fprintf('The roots of the equation is %g',k)
disp('The root of the equation is :');
disp(k);

 