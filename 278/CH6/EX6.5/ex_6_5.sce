syms t
b=120
Wmax=250
Wmin=100
sigmay=300
sigmae=225
FS=1.5
A=b*t
Wm=(Wmax+Wmin)/2
sigmam=(Wm*10^3)/A
disp(sigmam,"Mean stress=")
Wv=(Wmax-Wmin)/2
sigmav=(Wv*10^3)/A
disp(sigmav,"Variable stress=")
0=(sigmam/sigmay)-(sigmav/sigmae)-(1/FS)//according to Soderberg's relation
t=7.64*FS
disp(t,"t=")