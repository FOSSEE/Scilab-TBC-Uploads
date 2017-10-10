disp("Example 4.15")
disp("Asc=2-25dia bars","Ast=3-36dia bars","M20 Grade of concrete and Fe250steel","dd = 50mm","d=550mm","b=300mm","Given:")
b=300
d=550
dd=50
Ast= %pi*36*36*3/4
Asc=2*%pi*25*25/4
m=13.33 //(280/(3*sigmacbc))
Es=2*10^5
fck=20
fy=415
xumaxd=0.0035/(0.0055+(0.87*fy)/Es)
disp(xumaxd,"xumax/d for Fe250=")
xumax=xumaxd*d
disp("mm",xumax,"xu,max")
disp("Assuming fsc=fst=0.87*fy,, and considering force equilibrium")
disp("Cus+Cuc = Tu")
Cuc=0.362*fck*b
Cus=(0.87*fy-0.447*fck)*Asc
Tu=0.87*fy*Ast
xu=(Tu-Cus)/Cuc
disp("mm",xu,"xu=")
disp("xu>xu,max, hence the section is over-reinforced")
disp("Exact Solution considering strain compatibility")
disp("Applying Eq. 4.81: xu = fst*Ast - (fsc-0.447*fck)*Asc/(0.362*fck*b)")
disp("Therefore,xu=(3054*fst - 982*fsc+8779)/2172")

disp("First Cycle")
disp("1. xu lies within the two limits above; 263.5 mm < xu < 348.5mm")
disp("2. xu = (xu,max+xu)/2")
xu1=(xumax+xu)/2
disp("mm",xu1,"xu=")
disp("3.Esc = 00035*(1-dd/xu1)")
Esc = 0.0035*(1-dd/xu1)
disp(Esc,"Esc=")
disp("4.Est = 0.0035*(d/xu1-1)")
Est = 0.0035*(d/xu1-1)
disp(Est,"Est=")
disp("for Esc= 0.00380 fsc = 360.9 and for Esc = 0.00276 fsc=351.8")
fst1=351.8
fst2=360.9
fsc=fst1+((fst2-fst1)*((Esc*10^5-276)/(380-276)))
disp("MPa",fsc,"fsc=")
fst=fst1+((fst2-fst1)*((Est*10^5-276)/(380-276)))
disp("MPa",fst,"fst=")
disp("Therefore, xu = ")
xu2=(3054*fst - 982*fsc+8779)/2172
disp("mm",xu2,"xu=")

disp("Second Cycle")
disp("Assume xu= ")
xu3=(xu2+xu1)/2
disp("mm",xu3,"xu=")
Esc = 0.0035*(1-dd/xu3)
disp(Esc,"Esc=")
Est1=0.0035*(d/xu3-1)
disp(Est1,"Est=")
disp("for Esc= 0.00380 fsc = 360.9 and for Esc = 0.00276 fsc=351.8")
fst1=351.8
fst2=360.9
fsc=fst1+((fst2-fst1)*((Esc*10^5-276)/(380-276)))
disp("MPa",fsc,"fsc=")
disp("For strain, 0.00276 fst = 351.8 and for strain 0.00241 fst=342.8  From table 3.2")
fst4=351.8
fst3=342.8
fst11=(fst3+(fst4-fst3)*((Est1*10^5-241)/(276-241)))
disp("MPa",fst11,"fst1=")
xu4=(3054*fst11- 982*fsc+8779)/2172
disp("mm",xu4,"xu=")

disp("Third Cycle")
disp("1.Assume xu=")
xu5=(xu3+xu4)/2
disp("mm",xu5,"xu=")
Esc = 0.0035*(1-dd/xu5)
disp(Esc,"Esc=")
Est2=0.0035*(d/xu5-1)
disp(Est2, "Est=")
disp("for Esc= 0.00380 fsc = 360.9 and for Esc = 0.00276 fsc=351.8")
fst1=351.8
fst2=360.9
fsc=fst1+((fst2-fst1)*((Esc*10^5-276)/(380-276)))
disp("For strain, 0.00276 fst = 351.8 and for strain 0.00241 fst=342.8  From table 3.2")
fst12=342.8
disp("MPa",fst12,"fst2=")
xu6=(3054*fst12- 982*fsc+8779)/2172
disp("mm",xu6,"xu,final=")
Cuc=0.362*fck*b
Cus=(fsc-0.447*fck)*Asc
MuR=(Cuc*xu6*(d-0.416*xu6)+Cus*(d-dd))/10^6
disp("kNm",MuR,"MuR,final=")

disp("Approximate Solution")
disp("As an approximate and conservative estimate limiting xu to xu,max=263.5mm,")
Esc=0.0035*(1-dd/xumax)
disp(Esc,"Esc=")
fsc=352.5
disp("MPa",fsc,"fsc=")
disp("This value is alternatively obtainable from Table 4.5 for dd/d=0.09 and Fe415")
disp("Accordingly, limiting the ultimate moment of resistance MuR to the limiting moment Mu,lim")
Mulim=(0.362*fck*b*xumax*(d-0.416*xumax)+(fsc-0.447*fck)*Asc*(d-dd))/10^6
disp("kNm",Mulim,"Mu,lim=")
