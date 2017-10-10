disp("Example 4.8")
disp("Asc=3-28dia bars","Fe250","dd=50mm","Ast=6-28mmdia bar","Effective depth d=520 mm","Depth D=600mm","b=1000mm","bw=250mm","Depth of Flange Df=100mm","Span of Beam L=6m","Given Data:")
Asc=3*%pi*28*28/4
L=6
Df=100
bw=250
b=1000
D=600
d=520
dd=50
disp("Grade of Steel =Fe250","Grade of Concrete=M20")
disp("Verifying for the effective flange width b")
disp("Refering IS456:2000, Clause 23.1.2 c or Eq 4.30(b) from TB")
disp("For T-beams, bf = (lo/((lo/b)+4)+bw")
disp("bw=250mm","lo=6000mm")
lo=6000
bf=((lo)/((lo/b)+4)+bw)
disp("mm",bf,"bf=")

if(bf<b)
       disp(bf,"Since, bf<b,b=")

sigmast=130
sigmacbc=7
m=280/(3*sigmacbc)
disp(m,"m=")
dia=28
Ast= %pi*dia*dia*6/4
mAst=m*Ast
disp("mm^2",mAst,"Transformed Steel Area=mAst")
CSA=(1.5*m-1)*Asc
disp(CSA)
disp("Assuming first kd<Df and kd>dd, and solving Eq4.35 with b=bf")
a=bf/2
b1=CSA+mAst
c=(-CSA*dd)-(mAst*d)
kd1=((-b1+sqrt((b1*b1)-(4*a*c)))/(2*a))
disp("mm",kd1,"kd=")
disp("As kd>Df, the assumption kd</Df is incorrect")
disp("Now solving Eq.4.40 for kd>/Df")
a1=bw/2
b12=CSA+mAst+Df*(bf-bw)
c1=(-CSA*dd)-(mAst*d)-(Df*Df*(bf-bw)/2)
D1=((b12*b12)-(4*a1*c1))
kd12=(-b12+sqrt(D1))/(2*a1)
disp("mm",kd12,"kd=")
k=kd12/d
disp("mm",k,"Therefore, k =")
kb=(280)/(280+(3*sigmast))
disp(kb,"For a balanced WSM section with sigmast=130MPa, kb=")
disp("As k=0.3496<kb, the section is under reinforced whereby fst=sigmast=130MPa")
disp("Considering the linear stress distribution fc=")
fc= (sigmast/m)*(kd12/(d-kd12))
disp(fc)
z1=bf*kd12*(d-(kd12/3))
z2=(bf-bw)*(((kd12-Df)/kd12)^2)*(d-Df-((kd12-Df)/3))
z3=CSA*fc*((kd12-dd)/kd12)*(d-dd)
Mall=((0.5*fc*(z1-z2))+z3)/10^6
disp(Mall)


