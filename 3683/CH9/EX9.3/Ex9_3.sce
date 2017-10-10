l=7//span, in m
sigma_cbc=5//in MPa
sigma_st=140//in MPa
fy=250//in MPa
m=18.66//modular ratio
b=300//assume, in mm
W1=35//imposed load on beam, in kN/m
M=W1*l^2/8//in kN-m
d=(M*10^6/0.87/b)^0.5//in mm
d=910//approximately, in mm
D=1.1*d+50//increase d by 10% for self-weight and cover is 50 mm
D=1050//approximately, in mm
W2=25*(b/10^3)*(D/10^3)//self-weight, in kN/m
W=W1+W2//in kN/m
M=W*l^2/8//in kN-m
d=(M*10^6/0.87/b)^0.5//in mm
d=1000//approximately, in mm
dia=20//in mm
D=d+dia/2+35//in mm
Ast=round(M*10^6/sigma_st/0.87/d)//in sq mm
n=Ast/0.785/20^2//no. of 20 mm dia bars
n=7//assume
Ast=n*0.785*20^2//in sq mm
pt=Ast/b/D*100//pt=0.7, approximately
As=round(0.85/fy*b*d)//minimum steel, As<Ast, hence OK
Asf=0.1/100*b*d/2//side faced steel on each face, in sq mm
//provide 6 mm dia bars
s=1000*0.785*6^2/Asf//in mm
s=188//assume, in mm
V=W*l/2//in kN
Tv=V*10^3/b/d//<Tcmax=1.6 MPa, hence OK
//for M15 grade concrete and pt=0.7
Tc=0.33//in MPa
//as Tv>Tc, shear reinforcement required
Vs=V-Tc*b*d/10^3//in kN
//provide 6 mm dia bars
Asv=2*0.785*6^2//in sq mm
sigma_sv=140//in MPa
Sv=Asv*sigma_sv*d/Vs/10^3//in mm
Sv=155//approximately, in mm
Svmin=Asv*fy/0.4/b//in mm
Svmin=117//approximately, in mm
Sv=min(Sv,Svmin)//in mm
mprintf("Summary of design\nSize of beam = %d x %d mm\nCover = 35 mm\nSteel= %d-20 mm dia bars\nStirrups = 6 mm dia @ %d mm c/c throughout\nSide faced steel-6 mm dia @ %d mm c/c on both vertical faces of beam",b,D,n,Sv,s)
