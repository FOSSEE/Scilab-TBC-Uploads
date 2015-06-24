clc;
clear;
exec("C:\Program Files\scilab-5.3.0\bin\TCP\8_13data.sci");
x=Q/(%pi/4);//where x=V*(D^2)
KLentrance=0.5;
KLelbow=0.2;
KLexit=1;
//Finding f from Re, roughness and moody's chart
f=0.01528;
sumKL=(n*KLelbow)+KLentrance+KLexit;
y=f*l;
//V^2 = (x^2)/(D^4)
//energy equation with p1=p2pV1=V2=z2=0
z=(2*32.2*z1)/((x^2)*l);
k=sumKL/l;
fn=poly([(-f) (-k) 0 0 0 z],'D','c');
r=roots(fn);
disp("ft",r(1),"The diameter=")
count=1;
len=400:2000;
for i=400:2000
    root=roots(poly([(-f) (-(sumKL/i)) 0 0 0 ((2*32.2*z1)/((x^2)*i))],'a','c'));
    dia(count)=root(1);
    count=count+1;
end
plot2d(len,dia,rect=[0,0,2000,1.8])
xtitle("D vs l","l, ft","D, ft")
