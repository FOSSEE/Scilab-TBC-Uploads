syms d
Wmax=500
Wmin=200
sigmau=900
sigmae=700
FSu=3.5
FSe=4
Kf=1.65
A=(%pi/4)*d^2
Wm=(Wmax+Wmin)/2
sigmam=(Wm*10^3)/A
disp(sigmam,"Mean stress=")
Wv=(Wmax-Wmin)/2
sigmav=(Wv*10^3)/A
disp(sigmav,"Variable stress=")
0=1-((sigmam*Kf)/(sigmau/FSu))-(sigmav/(sigmae/FSe))//according to goodman relation
d=sqrt(3960)
disp(d,"d=")
