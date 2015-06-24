clear
clc
Xt=1/2;//mole fraction of toluene
Xb=1/2;//mole fraction of benzene
Pt=4.274;//Partial pressure of toluene in kNm^2
Pb=13.734;//Partial pressure of benzene in kNm^2
P=(Xt*Pt)+(Xb*Pb);//total pressure in kNm^2
printf('P=%.4f kNm^2',P)
Yt=(Xt*Pt)/P;//compostion of toluene
printf('\nYt=%.4f ',Yt)
Yb=(1-Yt);//compostion of benzene
printf('\nYb=%.4f ',Yb)
P0=(Pb*Pt)/(Pt+((Pb-Pt)*Xt));//pressure at which last trace liquid disappear
printf('\nP0=%.3f kNm^2',P0)
Xt1=(Xt*P0)/Pt;//composition of last trace of toluene
printf('\nXt1=%.4f kNm^2',Xt1)
Xb1=(1-Xt1);//composition of last trace of benzene
printf('\nXb1=%.4f kNm^2',Xb1)
P=sqrt(Pt*Pb);//pressure when 1 mol of mixture is vaporized in kN/m^2
printf('\nP=%.3f kN/m^2',P)
Yb1=1-((P-Pt)/(Pb-Pt));//composition of benzene when 1 mol of mixture is vaporized 
printf('\nYb1=%.3f ',Yb1)
Yt1=(1-Yb1);//composition of toluene when 1 mol of mixture is vaporized 
printf('\nYt1=%.3f ',Yt1)

//There are some errors in the solution given in textbook
//page 143
