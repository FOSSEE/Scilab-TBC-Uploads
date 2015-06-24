N=2
Y=4
K=7
q=sqrt(3*K)
CI=((q^(-Y)+(q+0.7)^(-Y)))^(-1)//C/I for 3-sector
CIdB=10*log10(CI)
disp(CIdB,'worst case signal to co-channel interfernce ratio C/I in dB')
