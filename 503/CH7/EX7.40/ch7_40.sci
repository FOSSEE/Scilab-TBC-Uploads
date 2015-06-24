//to calculate the mmf per pole on no load and speed developed

clc;
ATsefl=2400;
ATsenl=(3/25)*ATsefl;
ATsh=ATsefl;
ATnet=ATsenl+ATsh;disp(ATnet,'mmf/pole(AT)');
Ea=148;    //from magnetising curve
V=240;
vd=3;
Eanl=V-vd;
n=850;
nnl=n*Eanl/Ea;
disp(nnl,'speed(rpm)');