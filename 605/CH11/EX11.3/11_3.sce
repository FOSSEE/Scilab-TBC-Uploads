
S11=0.614*exp(-%i*167.4*%pi/180)
S21=2.187*exp(%i*32.4*%pi/180)
S12=0.046*exp(%i*65*%pi/180)
S22=0.716*exp(-%i*83*%pi/180)
del=(S11*S22-S12*S21)
B1=1+mod(S11)^2-mod(S22)^2-mod(del)^2
B2=1+mod(S22)^2-mod(S11)^2-mod(del)^2
C1=S11-Ss22*del
C2=S22-Ss11*del
function x=mod(n)
    r=real(n)
    i=imag(n)
    x=sqrt(r^2+i^2)
endfunction

disp(mod(del),"del=")
k=(1-mod(S11)^2-mod(S22)^2+mod(del)^2)/(2*mod(S12*S21))
disp(k,"k=")
FMS=(B1-sqrt(B1^2-4*mod(C1)^2))/(2*C1)
disp(FMS,"FMS=")
FML= (B2-sqrt(B2^2-4*mod(C2)^2))/(2*C2)
disp(FML,"FML=")
GTmax=mod(S21)/mod(S12)*(k-sqrt(k^2-1))
printf("\nGTmax=%.3f",GTmax)
printf("\nGTmax in dB=%.2f dB",10*log10(GTmax))




