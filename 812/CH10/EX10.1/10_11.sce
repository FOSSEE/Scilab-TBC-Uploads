//Performance curves//
pathname=get_absolute_file_path('10.11.sce')
filename=pathname+filesep()+'10.11-data.sci'
exec(filename)
[nQ mQ]= size(Q1);
[np mp]= size(p1);
[nP mP]= size(P1);
//Volume flow rate for fan 2(in cfm):
j=1:mQ;
Q2=Q1(j)*(N2/N1)*(D2/D1)^3
//Pressure values for fan 2(in inches of H2O):
j=1:mp;
p2=p1(j)*(d2/d1)*((N2/N1)^2)*((D2/D1)^2)
//Power values for fan 2(in hp):
j=1:mP;
P2=P1(j)*(d2/d1)*((N2/N1)^3)*((D2/D1)^5)
plot(Q2,p2)
xtitle('Performance curves','Volume flow rate(in cfm)','Pressure head(in inches of water)')
printf("\n\nType (resume) to continue or (abort) to exit\n\n")
pause 
clf
plot(Q2,P2)
xtitle('Performance curves','Volume flow rate(in cfm)','Power(in hp)')
printf("\n\nType (resume) to continue or (abort) to exit\n\n")
pause
clf
plot(Q2,Eff)
xtitle('Performance curves','Volume flow rate(in cfm)','Eficiency(in percentage)')
//Specific speed of fan(in US customary units) at operating point:
Nscu= 1150*110000^0.50*0.045^0.75/7.4^0.75
//Specific speed of fan (in SI units) at operating point:
Nssi=120*3110^0.5*0.721^0.75/1.84e3^0.75
