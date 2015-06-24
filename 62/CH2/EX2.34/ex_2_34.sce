clear;
clc;
h=[0 1 1 1 1 -1 -1 0];
x=[0 0 1 0 -1 0];
nx=0:length(x)-1;
nh=-1:length(h)-2;
//y=convol(x,h);
ny=min(nx)+min(nh):max(nx)+max(nh);
//or x[n]=delta[n-2]-delta[n-4] therefore y[n]=h[n-2]-h[n-4]
n1=nh+2;
n2=nh+4;
ny=min(nx)+min(nh):max(nx)+max(nh);
j=1;
k=1;
h2=zeros(ny);
h4=h2;
a=find(ny==n1(1))
for j=1:length(nh)
    h2(a+j-1)=h(j)
       end
a=find(ny==n2(1))
for j=1:length(nh)
    h4(a+j-1)=h(j)
       end
y=h2-h4;
figure
a=gca();
a.x_location="origin";
plot2d3(nh,h) 
plot(nh,h,'r.')
xtitle('Impulse Response','n','h[n]');
a.children.children.thickness = 3;
a.children.children.foreground= 2;
a.y_location="left";
figure
a=gca();
plot2d3(nx,x)
plot(nx,x,'r.') 
a.y_location="left";
a.x_location="origin";
xtitle('Input Response','n','x[n]');
a.children.children.thickness = 3;
a.children.children.foreground= 2;
figure
a=gca(); 
plot2d3(ny,y)
plot(ny,y,'r.')
a.x_location="origin";
a.y_location="left";
xtitle('Output Response','n','y[n]');
a.children.children.thickness = 3;
a.children.children.foreground= 2;