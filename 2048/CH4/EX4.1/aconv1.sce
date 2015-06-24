// To produce a^n 1(n)
// 4.1

exec('stem.sci',-1);
exec('label.sci',-1);

a = 0.9;
n = -10:20;
y = zeros(1,size(n,'*'));
for i = 1:length(n)
    if n(i)>=0, 
       y(i) = a^n(i);
    end
end
stem(n,y)
label('u1',4,'Time(n)','0.9^n1(n)',4)
