disp("Example 4.7")
disp("M20 Grade of concrete and Fe250steel","sigmast=130MPa","Sigmacbc=7 MPa","dd = 50mm","d=550mm","b=300mm","Given:")
b=300
d=550
dd=50 //Mentioning the top cover d' as dd throughout the example
sigmacbc=7
sigmast=130
disp("Transformed Section Properties")
m=13.33 //(280/(3*sigmacbc))
disp("Neutral Axis Depth, here in this case k=kb, corresponding to balanced section")
disp("For a balanced (WSM) section, kb= 280/(280+3*sigmast)")
kb=280/(280+(3*sigmast))
disp(kb,"kb=")
kbd=kb*d
disp("mm",kbd,"kb d=")
disp("Considering moments of areas about the neutral axis,")
disp("b*kb d^2/2 + CSA*(kb d-dd) = mAst*(d-kb d)")
disp("On replacing values stated above we get equation as : Ast = (0.8Asc + 1856)mm^2")
disp("Asc is to be determined using equation 4.39 as stated")
disp("M= Cc(d-kb d/3)+Cs(d-dd)")
disp("Cc=0.5*fc*b*(kb.d)")
disp("Cs=(1.5*m-1)*Asc*fc*((kd-dd)/kd)")
M=175*10^6
fc=7
Cc=0.5*fc*b*(kbd)
Cs1=(1.5*m-1)*fc*((kbd-dd)/kbd)
Asc=(M-(Cc*(d-kbd/3)))/(Cs1*(d-dd))
disp("mm^2",Asc,"Therefore, Asc=")
Ast=(0.8*Asc+1856)
disp("mm^2", Ast,"Therefore, Ast=")

disp("Alternate Solution to Example 4.7")
disp("Calculating Mwb=0.5*kb*(1-kb/3)*sigmacbc*b*d*d")
Mwb=0.5*kb*(1-kb/3)*sigmacbc*b*d*d/10^6
disp("kNm",Mwb,"Mwb=")
disp("Calculating Ast1=Mwb/(sigmast*d*(1-kb/3)")
Ast1=(Mwb*10^6)/(sigmast*d*(1-kb/3))
disp("mm^2",Ast1,"Ast1=")
disp("Calculating Ast2, Ast2= (M-Mwb)/(sigmast*(d-dd))")
Ast2= (M-Mwb*10^6)/(sigmast*(d-dd))
disp("mm^2",Ast2,"Ast2=")
disp("Therefore, Ast= Ast1+Ast2")
Astf=Ast1+Ast2
disp("mm^2",Astf,"Therefore, final Ast=")
disp("Calculating fcsc=sigmacbc*(1-dd/kbd)")
fcsc=sigmacbc*(1-dd/kbd)
disp(fcsc)
disp("Calculating Asc=(M-Mwb)/(1.5*m-1)*fcsc*(d-dd)")
Asc=(M-Mwb*10^6)/((1.5*m-1)*fcsc*(d-dd))
disp("mm^2",Asc,"Asc=")
