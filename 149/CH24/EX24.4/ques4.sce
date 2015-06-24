//ques 2
disp('f(x)=x*log(x)-1.2');
function y=f(x)
  y=x*log10(x)-1.2;
endfunction

disp('we are required to find the roots of f(x) by the method of false position');
disp('f(2)=-ve and f(3)=+ve so s root lie between 2 and 3');
disp('finding the roots by false position method');

l=2;
m=3;
for i=1:3
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

 