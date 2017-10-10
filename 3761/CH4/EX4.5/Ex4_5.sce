disp("Example 4.5")
disp("Calculating allowable moment capacity for beam of section as in 4.4")
L=6
Df=100
bw=250
b=1000
D=600
d=520
M=200
disp("Example 4.4")
disp("Service Load Moment = 200kNm","Ast=6-28mmdia bar","Effective depth d=520 mm","Depth D=600mm","b=1000mm","bw=250mm","Depth of Flange Df=100mm","Span of Beam L=6m","Given Data:")
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

sigmacbc=7
m=280/(3*sigmacbc)
disp(m,"m=")
dia=28
Ast= %pi*dia*dia*6/4
mAst=m*Ast
//disp("Assuming kd</Df, and equating moments of compression and transformed tension areas about the neutral axis,")
//disp("bf*(kd)^2/2 = m*Ast*(d-kd)")
b1=(2*mAst/bf)
c=(-mAst*2*d/bf)
a=1
kd1=((-b1+sqrt((b1*b1)-(4*a*c)))/(2*a))
kd2=((-b1-sqrt((b1*b1)-(4*a*c)))/(2*a))
//disp("mm",kd1,"therefore, kd=")
//disp("kd1>Df, the assumption kd</Df is incorrect")
disp(" For kd>Df, neutral axis located in the web")
disp("Using Equation 4.31 of TB")
disp("(bf-bw)*Df*(kd-Df/2)+ bw*(kd)^2/2 = mAst*(d-kd)")
a=bw/2
B=(bf*Df-bw*Df+mAst)
c=(bw*Df*Df/2 - bf*Df*Df/2-mAst*d)

Dis=(B*B)-(4*a*c)
kd1=((-B+sqrt(Dis))/(2*a))
disp("mm",kd1,"kd=")
disp("The neutral axis depth factor, k")
k=kd1/d
disp(k,"k=")
disp("For a balanced section as per Eq 4.23, kb")
sigmast=130
kb=280/(280+3*sigmast)
disp(kb,"kb=")
disp("As k<kb the section is under-reinforced section(WSM)")
disp("fst=sgimgast=130MPa (For Fe 250 Steel, dia>20mm")
fst=sigmast
fc=(kd1/(d-kd1))*(fst/m)
fc1=0.526*fc //As derived in previous example 4.4
disp("MPa",fc,"fc=")
disp("MPa",fc1,"fc1=")
disp("Substituting in Eq 4.34")
fact=0.526
M=(fc*((0.5*bf*(kd1)*(d-kd1/3)-(0.5*fact*(bf-bw)*(kd1-Df))*(d-Df-((kd1-Df)/3)))))/10^6
disp("Therefore, Moment carrying capacity Mall=")
disp("kNm", M , "Mall=")
