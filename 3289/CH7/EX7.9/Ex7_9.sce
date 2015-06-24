clc

L=76.2 //mm
h=50.8 //mm
t=25.4 //mm
p=6895 //kPa
E=207 //GPa
v=0.15

//solution a: exact solution
//p=Mh/I
//sigmax=-(y/h)*p
sigmay=0
tauxy=0
//derivative(u,x)=-(yp/Eh)
//derivative(v,y)=(v*y*p)/(Eh)
//derivative(u,y)+derivative(v,x)=0
//u=-(p/E*h)*x*y                        // for u(0,0)=v(0,0)=0 and u(L,0)=0
//v=-(p/2*E*h)*(x^2+v*y^2)
//sigmax=-(1/0.0508)*(y*p)
sigmaxmax=6895 //kPa
//u(0.0762,-0.0254)=25.4*10^-6 //m
//v(0.0762,0)=1.905*10^-6 //m

//solution b:
Qx10=((0.0254*0.0254)/6)*((2*sigmaxmax)+3447.5)
disp(Qx10,"in mN is= ")
Qx11=((0.0254*0.0254)/6)*(2*3447.5+sigmaxmax)+((0.0254*0.0254)/6)*(2*3447.5+0)
disp(Qx11,"in mN is= ")
Qx12=((0.0254*0.0254)/6)*(0+3447.5)
disp(Qx12,"in mN is= ")
