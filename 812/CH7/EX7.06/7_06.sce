//power and speed//
pathname=get_absolute_file_path('7.06.sce')
filename=pathname+filesep()+'7.06-data.sci'
exec(filename)
//The same pump is used for both the conditions.Hence:
D2=D1;
//The same water is used for both the conditions. Hence:
d2=d1;
//Flow rate at condition 2(in gpm):
Q2=Q1*N2/N1*(D2/D1)^3
//Head at condition 1(in ft):
H1=(N1*sqrt(Q1)/Nscu1)^(4/3)
//Head at condition 1(in ft):
H2=H1*(N2/N1)^2*(D2/D1)^2
//Pump output power at condition 1(in hp):
P1=d1*g*Q1*H1/7.48/60/550
//Pump output power at condition 2(in hp):
P2=P1*(d2/d1)*(N2/N1)^3*(D2/D1)^5
//Required input power(in hp):
Pin=P2/Effp
//Specific speed at condition 2:
Nscu2=N2*sqrt(Q2)/H2^(3/4)
printf("\n\nRESULTS\n\n\n")
printf("\n\nVolume flow rate at condition 2: %.3f gpm\n\n\n",Q2)
printf("\n\nHead at condition: %.3f ft\n\n\n",H2)
printf("\n\nPump output power at condition: %.3f hp\n\n\n",P2)
printf("\n\nRequired input power: %.3f hp\n\n\n",Pin)
printf("\n\nSpecific speed at condition 2: %.3f\n\n\n",Nscu2)
