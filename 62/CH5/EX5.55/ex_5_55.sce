clear;
clc;
close;
w=-10:0.1:10;
w0=3;//w0=1/(rc)
for i=1:length(w)
    Hw(i)=1/(1+%i*(w(i)/w0));
    if abs(Hw(i))==1 then
        wmax=w(i);
        Hmax=Hw(i)
    end
    if abs(Hw(i))==abs(1/(1+%i)) then
        w3db=w(i);
    end
end
disp("rad/s",w3db,"the 3-db bandwidth is w=");
weq=(1/Hmax^2)*(%pi)/(2*w0);//integral(|H(w)|^2)=%pi*rc/2;
disp("rad/s",weq,"the equiva;ent bandwidth is weq=");
a=gca();
plot(w,abs(Hw)^2);
poly1=a.children.children;
poly1.thickness=3;
poly1.foreground=2;
xtitle('|H(w)|','w')