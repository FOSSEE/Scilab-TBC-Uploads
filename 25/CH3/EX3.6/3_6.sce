//example:-3.6,page no.-93.
// program to find out characteristic impedence and plot the magnitude of reflection coefficient versus normalized frequency.
Zl=100;// load impedence
Zi=50;//impedence of line which is to be matched
//as it is a quarter wave transformer so,Zi=(Zo)^2/zl;
Zo=sqrt(Zi*Zl);
disp(Zo,'characteristic impedence of tne matching section=')
syms f fo x;
x=f/fo;
x=0:0.001:4;
y=(%pi/2)*(x);
Zin=Zo*(((Zl*cos(y))+(Zo*%i*sin(y)))./((Zo*cos(y))+(Zl*%i.*sin(y))))
tao=((Zin-Zo)./(Zin+Zo));
tao=abs(real(tao)+imag(tao));
plot2d(x,tao,style=6,rect=[0,0,4,1])
xtitle("reflection coefficient versus normalized frequency for quarter wave transformer","f/fo","tao(reflection coefficient)")