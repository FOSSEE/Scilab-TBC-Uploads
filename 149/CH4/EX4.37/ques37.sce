//ques37
syms a t
x=a*(cos(t)+log(tan(t/2)));
y=a*sin(t);
s=diff(x,t,1)/diff(y,t,1);
disp('length of tangent ');
l=y*(1+s)^(0.5);
disp(l);
disp('checking for its dependency on t')

f=1
t=0;
k=eval(l);
for i=1:10
  t=i;
  if(eval(l)~=k)
    f=0;
  end
end
if(f==1)
  disp("verified and equal to a");
  disp('subtangent');
  m=y/s;
  disp(m);
   
    