
Gs=10^0.5
S11=2.27*exp(-%i*%pi/180*120)
S21=4*exp(%i*%pi/180*50)
S12=0
S22=0.6*exp(-%i*%pi/180*80)
Ss11=2.27*exp(%i*%pi/180*120)
function x=mod(n)
    r=real(n)
    i=imag(n)
    x=sqrt(r^2+i^2)
endfunction
//(b)
gs=Gs*(1-mod(S11)^2)
Rs=(1-mod(S11)^2)*sqrt(1-gs)/(1-(1-gs)*mod(S11)^2)
ds=gs*(Ss11)/(1-(1-gs)*mod(S11)^2)
printf("\nGs=%.4f\ngs=%.4f\nRs=%.4f",Gs,gs,Rs)
disp(ds,"ds=")
Gs=10^.3
gs=Gs*(1-mod(S11)^2)
Rs=(1-mod(S11)^2)*sqrt(1-gs)/(1-(1-gs)*mod(S11)^2)
ds=gs*(Ss11)/(1-(1-gs)*mod(S11)^2)
printf("\nGs=%.4f\ngs=%.4f\nRs=%.4f",Gs,gs,Rs)
disp(ds,"ds=")
GLmax=1/(1-mod(S22)^2)
disp(GLmax,"GLmax=")
Go=mod(S21)^2
disp(Go,"Go=")
GTU=3+10*log10(GLmax*Go)
printf("\nGTU=%.4f dB",GTU)




