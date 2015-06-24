w1 = -1:0.1:1;
w2 = -10:0.1:10;
X1 = ones(1,length(w1));
X2 = zeros(1,length(w2));
X = [X2(1:find(w2==-1)-2),0.5,X1,0.5,X2(find(w2==1)+2:$)];
a=gca();
subplot(2,1,1)
plot(w2,X);
poly1=a.children.children;
poly1.thickness=3;
poly1.foreground=2;
xtitle('X(w)','w')
tmax=10;
dw=0.1;
t=-tmax:0.1:tmax;
x=X*exp(%i*(t'*w2))*dw;
subplot(2,1,2)
a=gca();
plot(t,x);
poly1=a.children.children;
poly1.thickness=3;
poly1.foreground=2;
xtitle('x(t)','t')
wM=1.5;
//Ts<%pi/wM
Ts=1;
for i=1:length(t)
    if modulo(t(i),Ts)==0 then
        deltaT(i)=1;
    else
        deltaT(i)=0;
    end
end
figure
subplot(2,1,1)
a=gca();
plot2d3(t,deltaT);
poly1=a.children.children;
poly1.thickness=3;
poly1.foreground=2;
xtitle('detlaT(t) Ts<%pi/wM','t')
ws=floor(2*%pi/Ts);
for i=1:length(w2)
    if modulo(w2(i),ws)==0 then
        deltaW(i)=1;
    else
        deltaW(i)=0;
    end
end
subplot(2,1,2)
a=gca();
plot2d3(w2,deltaW);
poly1=a.children.children;
poly1.thickness=3;
poly1.foreground=2;
xtitle('deltaW(w)','w')
xs=x.*deltaT';
figure
subplot(2,1,1)
a=gca();
plot2d3(t,xs)
poly1=a.children.children;
poly1.thickness=3;
poly1.foreground=2;
xtitle('xs(t)','t')
Xsw=convol(X,deltaW');
subplot(2,1,2)
a=gca();
plot2d(w2,Xsw(101:301));
poly1=a.children.children;
poly1.thickness=3;
poly1.foreground=2;
//Ts>%Pi/wM
Ts=3.5;
for i=1:length(t)
    if modulo(t(i),Ts)==0 then
        deltaT(i)=1;
    else
        deltaT(i)=0;
    end
end
figure
subplot(2,1,1)
a=gca();
plot2d3(t,deltaT);
poly1=a.children.children;
poly1.thickness=3;
poly1.foreground=2;
xtitle('deltaT(t) Ts<%pi/wM','t')
ws=floor(2*%pi/Ts);
for i=1:length(w2)
    if modulo(w2(i),ws)==0 then
        deltaW(i)=1;
    else
        deltaW(i)=0;
    end
end
subplot(2,1,2)
a=gca();
plot2d3(w2,deltaW);
poly1=a.children.children;
poly1.thickness=3;
poly1.foreground=2;
xtitle('deltaW(w)','w')
xs=x.*deltaT';
figure
subplot(2,1,1)
a=gca();
plot2d3(t,xs)
poly1=a.children.children;
poly1.thickness=3;
poly1.foreground=2;
xtitle('xs(t)','t')
subplot(2,1,2)
d=gca();
for i=1:length(w2)
    if modulo(w2(i),ws)==0 then
        plot(w2+w2(i),X)
    end
end
poly1=d.children.children;
poly1.thickness=1;
d.data_bounds=[-5 0;5 2];

poly1.foreground=2;
xtitle('Xs(w)','w')
