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
disp("Assuming kd</Df, and equating moments of compression and transformed tension areas about the neutral axis,")
disp("bf*(kd)^2/2 = m*Ast*(d-kd)")
b1=(2*mAst/bf)
c=(-mAst*2*d/bf)
a=1
kd1=((-b1+sqrt((b1*b1)-(4*a*c)))/(2*a))
kd2=((-b1-sqrt((b1*b1)-(4*a*c)))/(2*a))
disp("mm",kd1,"therefore, kd=")
disp("kd1>Df, the assumption kd</Df is incorrect")
disp(" For kd>Df, neutral axis located in the web")
disp("Using Equation 4.31 of TB")
disp("(bf-bw)*Df*(kd-Df/2)+ bw*(kd)^2/2 = mAst*(d-kd)")
a=bw/2
B=(bf*Df-bw*Df+mAst)
c=(bw*Df*Df/2 - bf*Df*Df/2-mAst*d)

Dis=(B*B)-(4*a*c)
kd1=((-B+sqrt(Dis))/(2*a))
disp("mm",kd1,"kd=")
disp("Relating the compressive stress fc1 at the flange bottom to fc,")
disp("fc1=fc*((kd-Df)/kd)")
fact=((kd1-Df)/kd1)
disp("*fc",fact,"fc1=")
disp("Compressive Force C= 0.5*fc*bf*(kd)-0.5*fc1*(bf-bw)*(kd-Df)")
disp("Taking moments of forces about the tension steel centriod, using equation 4.34")
fc=((M*10^6)/((0.5*bf*(kd1)*(d-kd1/3)-(0.5*fact*(bf-bw)*(kd1-Df))*(d-Df-((kd1-Df)/3)))))
disp("MPa",fc,"Therefore, on solving we get, fc=")
disp("Applying C= T")
fst= (0.5*fc*bf*(kd1)-0.5*fact*fc*(bf-bw)*(kd1-Df))/Ast
disp("MPa",fst,"Therefore, fst = ")
disp("From the stress distribution diagram: fst = m*fc*((d-kd)/kd)")
fst1=m*fc*((d-kd1)/kd1)
disp("MPa",fst1, "As before")


