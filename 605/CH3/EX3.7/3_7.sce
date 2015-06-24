//data
Zo1=80
ZL=50
h=1.6     //mm
Er=2.3
Zo=sqrt(Zo1*ZL)
A=1.4635
B=6.1739
qo=150
// formulas and result
printf("\nresult:-")
W=h*(2/%pi*(6.1739-1-log(2*6.1739-1)+(2.3-1)/(2*2.3)*(log(6.1739-1)+0.39-0.61/2.3)))
printf("\nW=%.4f mm",W)
F=(1+12*h/W)^(-1/2)
printf("\nF=%.6f",F)
Ee=(2.3+1)/2+(2.3-1)/2*0.383216-(2.3-1)/4.6*0.005/sqrt(2.0656)
printf("\nEe=%.1f",Ee)
F=4*h*sqrt(Er-1)/qo*(0.5+(1+2*log10(1+W/h))^2)
printf("\nF=%f",F)
Ee=((sqrt(2.3)-sqrt(1.9))/(1+4*F^(-1.5))+sqrt(1.9))^2
printf("\nEe(f)=%f",Ee)
q=3*10^8/(2*10^9*sqrt(1.9))
printf("\nq=%f m",q)
length_of_line=q/4
printf("\nlength of line=%.3f m",length_of_line)


