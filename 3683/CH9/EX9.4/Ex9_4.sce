l=10//span, in m
sigma_cbc=5//in MPa
sigma_st=140//in MPa
fy=250//in MPa
m=18.66//modular ratio
Df=100//slab thickness, in mm 
D=l*10^3/12//in mm
D=850//approximately, in mm
d=D-100//cover=100 mm
bw=300//in mm
bf=l*10^3/6+bw+6*Df//>2500 mm c/c distance of beams
bf=2500//in mm
W1=(bw/10^3)*(d-Df)/10^3*25//in kN/m
W2=(Df/10^3)*(bf/10^3)*25//in kN/m
W3=(bf/10^3)*5//imposed load, in kN/m
W=W1+W2+W3//in kN/m
W=24//approximately, in kN/m
M=W*l^2/8//in kN-m
V=W*l/2//in kN
Ast=round(M*10^6/sigma_st/0.87/d)//in sq mm
//provide 4-25 mm dia bars + 4-20 mm dia bars
Ast=4*0.785*25^2+4*0.785*20^2//in sq mm
//verification of trial section
//assume x>Df
x=(m*Ast*d+bf*Df^2/2)/(bf*Df+m*Ast)//in mm
//sigma_cbc'=sigma_cbc (x-Df)/x
a=(x-Df)/x
z=d-(1+2*a)/(1+a)*Df/3//in mm
sigma_st=M*10^6/Ast/z//<140 MPa, hence OK
sigma_cbc=sigma_st/m*x/(d-x)//<5 MPa, hence OK
Tv=V*10^3/bw/d//in MPa
pt=Ast*100/(bw*d+(2500-300)*100)//pt=0.72, approximately
//for M15 grade concrete and pt=0.72
Tc=0.33//in MPa
//as Tv>Tc, shear reinforcement required
Vs=V-Tc*bw*d/10^3//in kN
//provide 6 mm dia bars
Asv=2*0.785*6^2//in sq mm
sigma_sv=140//in MPa
Sv=Asv*sigma_sv*d/Vs/10^3//in mm
Sv=130//approximately, in mm
Svmin=Asv*fy/0.4/bw//in mm
Svmin=117//approximately, in mm
Sv=min(Sv,Svmin)//in mm
mprintf("T beam:bf=%d mm\nDf=%d mm\nd=%d mm\nbw=%d mm\nCover = 50 mm\nSteel= 4-25 mm dia + 4-20 mm dia bars\nStirrups = 6 mm dia @ %d mm c/c throughout",bf,Df,d,bw,Sv)
