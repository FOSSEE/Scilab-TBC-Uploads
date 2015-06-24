//Chapter 8, Problem 5, figure 8.28
clc
Rf=9e3                              //resistance in ohm
R1=1e3                              //resistance in ohm
Kphi=0.12                           //transfer gain in volt/radian
Ko=-40e3                            //transfer gain in hertz/volt
fi=100e3                            //input frequency in hertz
fo=120e3                            //oitput frequency in hertz from VCO

//calculation
Ka=(Rf/R1)+1
Kl=Kphi*Ka*Ko*2*%pi
Kl_dB=real(20*log10(Kl))
fd=fi-fo
Vo=fd/Ko
Vd=Vo/Ka
theta=Vd/Kphi
fd1=-Kl/(2*%pi)
Vd1=Kphi*%pi/2

printf("(a) Voltage gain (ka) for the op-amp = %d\n\n",Ka)
printf("(b) Loop gain (kL) = %.1f s^-1\n\t\t= %.1f dB\n\n",Kl,Kl_dB)
printf("(c) With S1 open as shown, there is no phase lock and the beat frequency = %d kHz\n\n",fd/1000)
printf("(d)(i) fo = %d kHz\n",fi/1000)
printf("  (ii) Static phase error = %.3f rad\n",theta)
printf("  (iii) Vo = %.1f V\n\n",Vo)
printf("(e) Hold-in range Df = %.2f kHz\n\n",fd1/1000)
printf("(f) Maximum value of vd = %.3f V d.c",Vd1)
