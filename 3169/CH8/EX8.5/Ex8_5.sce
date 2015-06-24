//developed in windows XP operating system
//platform Scilab 5.4.1
clc;clear all;
//example 8.5
//calculation of the transmitted,reflected voltage and current waves

//given data
L1=0.189*10^-3//inductance(in H/km) of the cable
C1=0.3*10^-6//capacitance(in Farad/km) of the cable
L2=1.26*10^-3//inductance(in H/km) of the overhead line
C2=0.009*10^-6//capacitance(in Farad/km) of the overhead line
e=200*10^3//surge volatge(in kV)

//calculation
Z1=sqrt(L1/C1)//surge impedance of the cable
Z2=sqrt(L2/C2)//surge impedance of the line
tau=(Z2-Z1)/(Z2+Z1)//when wave travels along the cable
edash=tau*e//reflected wave
edashdash=(1+tau)*e//transmitted wave
Idash=edash/Z1//reflected current wave
Idashdash=edashdash/Z2//transmitted current wave
Z2n=Z1
Z1n=Z2
taun=(Z2n-Z1n)/(Z2n+Z1n)//when wave travels along the line
edashn=taun*e//reflected wave
edashdashn=(1+taun)*e//transmitted wave
Idashdashn=edashdashn/Z2n//transmitted current wave
Idashn=edashn/Z1n//reflected current wave

printf('When wave travels along the cable,the transmitted voltage is %3.2f kV',edashdash*10^-3)
printf('\nWhen wave travels along the cable,the reflected voltage is %3.2f kV',edash*10^-3)
printf('\nWhen wave travels along the cable,the transmitted current is %3.3f kA',Idashdash*10^-3)
printf('\nWhen wave travels along the cable,the reflected current is %3.2f kA',Idash*10^-3) 
printf('\nWhen wave travels along the line,the transmitted voltage is %3.2f kV',edashdashn*10^-3)
printf('\nWhen wave travels along the line,the reflected voltage is %3.2f kV',edashn*10^-3)
printf('\nWhen wave travels along the line,the transmitted current is %3.3f kA',Idashdashn*10^-3)
printf('\nWhen wave travels along the line,the reflected current is %3.3f kA or %d A',abs(Idashn*10^-3),abs(Idashn)) 
