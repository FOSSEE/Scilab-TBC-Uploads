
RL=50
Rs=75

R1=sqrt(Rs*(Rs-RL))
R2=sqrt(RL^2*Rs/(Rs-RL))
attenuation=20*log10(R2*RL/(R1*(R2+RL)+R2*RL))
printf("\nR1=%.1f ohm\nR2=%.1f ohm\nattenuation(dB)=%.2f dB",R1,R2,attenuation)