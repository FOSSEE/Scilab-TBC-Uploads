//NPSHA and NPSHR// 
pathname=get_absolute_file_path('10.08.sce')
filename=pathname+filesep()+'10.08-data.sci'
exec(filename)
//Diameter of pipe (in feet):
Df= Di/12
//Area of crossection of pipe(in ft^2):
A=%pi/4*Df^2
//Velocity of flow(in ft/sec):
V=Q/7.48/A/60
//For water at T=80F,viscosity=0.927e-5 ft^2/sec, Reynolds number:
Re=V*Df/v
//Friction loss Coefficient for this value of Re:
f=0.0237;
//For cast iron, roughness(in feet):
e=0.00085
//e/D is:
e/Df
//Total head loss(in feet):
HL=K+f*(SE+OGV)+f*(L/Df)+1
//The heads are(in feet):
H1=patm*144/(p*g)
Vh=V^2/2/g
//Suction head(in feet):
Hs=H1+h-HL*Vh
//NPSHA(in feet):
NPSHA=Hs+Vh-Hv1
//For a flow rate of 1000 gpm,NPSHR(in feet) for water at 80 F
NPSHR=10 
//PLOTTING NPSHA AND NPSHR VERSUS VOLUME FLOW RATE:
//For 80 F
Qp=0:100:1500;
[nQp mQp]=size(Qp);
 for j=1:mQp;
 Vp(j)=Qp(j)/(7.48*A*60);
 Vhp(j)=(Vp(j))^2/2/g;
 Hs(j)=H1+h-HL*Vhp(j);
 end

for j=1:mQp;
  NPSHAp1(j)=Hs(j)+(Vhp(j))-Hv1;
end

plot(Qp,NPSHAp1,"-+")
plot(Qh,NPSHRp,"-o")
xtitle('Suction head vs Flow rate','Volume flow rate(gpm)','Suction Head(feet)');
printf("\n\nType (Resume) to continue or (abort) to end\n\n")
legend('NPSHA','NPSHR')
pause 
clf

//For 180 F
for j=1:mQp;
  NPSHAp2(j)=Hs(j)+(Vhp(j))-Hv2;
end
plot(Qp,NPSHAp2,"-+")
plot(Qh,NPSHRp,"-o")
xtitle('Suction head vs Flow rate','Volume flow rate(gpm)','Suction Head(feet)');
legend('NPSHA','NPSHR')
printf("\n\nRESULTS\n\n")
printf("\n\nNPSHA at Q=1000 gpm of water at 80 F: %.2f ft\n\n",NPSHA)
printf("\n\nNPSHR at Q=1000 gpm of water at 80 F: %.1f ft\n\n",NPSHR)
