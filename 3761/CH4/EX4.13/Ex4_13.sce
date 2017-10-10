disp("Example 4.13")
disp("fck=20MPa","fy=Fe250","Ast=4926mm^2","d=520mm","bw=250mm","Df=100mm","bf=850mm","Given:")
bf=850
Df=100
bw=250
d=520
Ast=4926
fy=250
fck=20
Es=2*10^5
xumaxd=0.0035/(0.0055+0.87*(fy/Es))
xumax=xumaxd*d
disp("mm",xumax,"xumax=")
disp("First assuming xu</Df and xu</xu,max")
disp("xu=(0.87*fy*Ast)/(0.362*fck*bf)")
xu=(0.87*fy*Ast)/(0.362*fck*bf)
disp("mm",xu,"xu=")
disp("xu >Df, Hence this value of xu is not correct")
disp("As xu>Df, Cuw = 0.362*fck*fy*bw*xu")
Cuw=0.362*fck*fy
disp("xu N", Cuw,"Cuw=")
disp("ASssuming xu>/7/3*Df = 233.33mm, yf=Df=100mm and Cuf=0.447*fck*(bf-bw)*Df")
Cuf=0.447*fck*(bf-bw)*Df
disp("N",Cuf,"Cuf=")
disp("Further assuming xu</xu,max = 276.1 mm, fst=0.87*fy, and")
Tu=0.87*fy*Ast
disp("N",Tu,"Tu=")
disp("Applying the force equilibrium condition Cuw+Cuf=Tu")
xu=(Tu-Cuf)/Cuw
disp("mm",xu,"xu=")
disp("which implies xu>7/3Df =233.3mm, but not xu</xu,max=276.1mm. The section is over-reinforcedas per the Code provisions")

disp("Exact Solution (considering strain compatibility)")
disp("mm",xu,"Corresponding to xu=")
disp("Est=0.0035*(d/xu-1)")
Est=0.0035*(d/xu-1)
disp(Est,"Est=")
strainyield=0.87*fy/Es
disp("Est is greater than strain at yield for Fe250")
disp(strainyield)
disp("Hence the design steel stress isindeed fst=0.87*fy and the so calculated xu above, is the correct depth of the neutral axis")
disp("Accordingly,MuR= Cuw*(d-0.416*xu)+Cuf*(d-Df/2)")
MuR=(Cuw*xu*(d-0.416*xu)+Cuf*(d-Df/2))/10^6
disp("kNm",MuR,"MuR=")

disp("APPROXIMATE SOLUTION")
disp("Limiting xu to xu,max=276.1 mm and taking moments of Cuw and Cuf about the centroid of the tension steel.(Note that, following the Code procedure, Df/d=100/520=0.192<0.2, yf=Df=100mm")
xumax
MuRl=((Cuw*xumax*(d-0.416*xumax))+(Cuf*(d-Df/2)))/10^6
disp("kNm",MuRl,"MuR,lim=")
