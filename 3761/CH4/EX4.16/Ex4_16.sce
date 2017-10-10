disp("Example 4.16")
disp("Ast= 4-25dia bars","Asc= 2-25 dia bars","fck=20MPa","fy=415MPa","dd=45mm","d=655mm","b=300mm","Given:")
disp("xu,max/d=0.479")
Es=2*10^5
dd=45
d=655
b=300
fy=415
fck=20
Ast=%pi*25*25
Asc=%pi*25*25*2/4
xumaxd=0.0035/(0.0055+(0.87*fy/Es))
xumax=xumaxd*d
disp("mm",xumax,"xu,max=")
disp("Assuming for a first approximation fsc=fst=0.87*fy")
Cuc=0.362*fck*b
disp("xu N",Cuc,"Cuc=")
Cus=(0.87*fy-0.447*fck)*Asc
disp("N",Cus,"Cus=")
Tu=0.87*fy*Ast
disp("N",Tu,"Tu=")
disp("Considering force equilibrium:Cuc+Cus = Tu")
xu=(Tu-Cus)/Cuc
disp("mm",xu,"xu=")
disp("xu<xu,max, therefore, the assumption fst=0.87*fy is justified")
disp("Further Esc= 0.0035*(1-dd/xu)")
Esc= 0.0035*(1-dd/xu)
disp(Esc,"Esc=")
disp("For Fe415, Ey=0.87*fy/Es +0.002")
Ey=0.87*fy/Es +0.002
disp(Ey,"Ey=")
disp("As, Esc<Ey the assumption fsc=0.87*fy is not justified whereby the calculated value of Cus and henec of xy =167.3mm is alos not correct. the correct value has to be obtained iteratively using strain compatibility")
disp("FIRST CYCLE")
disp("Assuming Esc=0.00256")
//according to the table 3.2, interpolating the values
//for Esc=0.00241 fst=342.8
//for Esc=0.00276 fst = 351.8
fst1=342.8
fst2=351.8
fsc=fst1+((fst2-fst1)*((Esc*10^5-241)/(276-241)))
disp("MPa",fsc,"fsc=")
Cus=(fsc-0.447*fck)*Asc
disp("N",Cus,"Cus=")
xu=(Tu-Cus)/Cuc
disp("mm",xu,"xu=")
Esc1= 0.0035*(1-dd/xu)
disp(Esc1,"Esc=")

disp("SECOND CYCLE")
disp("Assuming Esc=0.00259")
//according to the table 3.2, interpolating the values
//for Esc=0.00241 fst=342.8
//for Esc=0.00276 fst = 351.8
fst1=342.8
fst2=351.8
fsc1=fst1+((fst2-fst1)*((Esc1*10^5-241)/(276-241)))
disp("MPa",fsc1,"fsc=")
Cus1=(fsc1-0.447*fck)*Asc
disp("N",Cus1,"Cus=")
xu1=(Tu-Cus1)/Cuc
disp("mm",xu1,"xu=")

disp("Taking xu=173.4mm")
MuR=(Cuc*xu1*(d-0.416*xu1)+Cus1*(d-dd))/10^6
disp("kNm",MuR,"MuR=")

