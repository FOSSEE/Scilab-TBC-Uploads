//ques2
syms n a b yn0 yn1 yn2 
yn=a*2^n+b*(-2)^n;
disp('yn=');
disp(yn);
n=n+1;
yn=eval(yn);
disp('y(n+1)=yn1=');
disp(yn);
n=n+1;
yn=eval(yn);
disp('y(n+2)=yn2=');
disp(yn);
disp('Eliminating a b fropm these equations we get : ');
A=[yn0 1 1;yn1 2 -2;yn2 4 4]
y=det(A);
disp('The required difference equation :');
disp(y);
disp('=0');