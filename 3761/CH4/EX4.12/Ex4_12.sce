disp("Example 4.12")
disp("fck=20MPa","fy=Fe250","Ast=3695mm^2","d=520mm","bw=250mm","Df=100mm","bf=850mm","Given:")
bf=850
Df=100
bw=250
d=520
Ast=3695
fy=250
fck=20
Es=2*10^5
xumaxd=0.0035/(0.0055+0.87*(fy/Es))
xumax=xumaxd*d
disp("First assuming xu</Df and xu</xu,max and considering force equilibrium")
disp("Cu=Tu=0.362*fck*bf*xu=0.87*fy*Ast")
disp("Therefore,xu=")
xu=(0.87*fy*Ast)/(0.362*bf*xu*fck)
disp(xu,"mm")
disp("Since, xu>Df, the value is incorrect ")

disp("Asxu>Df, the compression in web is given by: Cuw=0.362*fck*bw*xu")
Cuw=0.362*fck*bw
disp("*xu N",Cuw)
disp("Assuming xu>/7/3*Df = 233.3, the commpression in the flange is given by: Cuf=0.447*fck*(bf-bw)*Df")
Cuf=0.447*fck*(bf-bw)*Df
disp("Cuf=")
disp("N",Cuf)
disp("Also assuming xu</xu,max = 276.1mm fst= 0.87*fy, and Tu=0.87*fy*Ast")
Tu=0.87*fy*Ast
disp("Tu=")
disp("N",Tu)
disp("Aplying the equilibrium conditions (Cuw+Cuf=Tu")
xu=(Tu-Cuf)/Cuw
disp("Since, xu<7/3*Df, hence this value of xu is also not correct")
disp("As Df<xu<7/3*Df, the depth yf</Df of the equivalent concrete stress block is obtained as: yf=0.15*xu+0.65*Df = (0.15*xu+65)mm")
disp("Cuf=Cuf*(yf/Df)= (804.6*xu+348660)N")
disp("Cuw+Cuf=Tu")
xu1=(Tu-(Cuf*(65/100)))/(Cuw+(Cuf*0.15/100))
disp("xu=")
disp("mm",xu1)
disp("As, xu<xu,max; Hence the assumption fst=0.87*fy is OK")
yf=(0.15*xu1)+65
disp("mm",yf,"yf=")
disp("Taking moments of Cuw and Cuf about the centroid of tension steel, MuR= Cuw*(d-0.416*xu)+Cuf*(d-yf/2)")
Cuf=804.6*xu1+348660
MuR=(Cuw*xu1*(d-0.416*xu1)+(Cuf*(d-yf/2)))/10^6
disp("kNm",MuR,"MuR=")




