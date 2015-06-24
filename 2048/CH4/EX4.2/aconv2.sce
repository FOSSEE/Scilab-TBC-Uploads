// Plot of -0.9^n1(-n-1)
// 4.2

exec('stem.sci',-1);
exec('label.sci',-1);

a = 0.9;
n = -10:20;
y = zeros(1,size(n,'*'));
for i = 1: length(n)
    if n(i)<= -1,
        y(i) = -(a^n(i));
        else y(i) = 0;
    end
end
stem(n,y)
label('u2',4,'Time(n)','-0.9^n1(-n-1)',4)



