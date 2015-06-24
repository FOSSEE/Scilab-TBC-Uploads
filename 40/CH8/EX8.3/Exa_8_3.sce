//Circular shift and flipping
//(a)right circular shift
y=[1 2 3 4 5 0 0 6];
f=y;g=y;h=y;
for i=1:2
    b=f(length(f));
    for j=length(f):-1:2
        f(j)=f(j-1);
     end
     f(1)=b;
end
disp(f,'By right circular shift y[n-2] is');
//(b)left circular shift
for i=1:2
    a=g(1);
    for j=1:length(g)-1
        g(j)=g(j+1);
     end
     g(length(g))=a;
end
disp(g,'By left circular shift y[n+2] is');
//(c)flipping property
h=[h(1) h(length(h):-1:2)];
disp(h,'By flipping property y[-n] is');