N=1
Y=4
K=7
q=sqrt(3*K)
CI=((q+0.7)^(-Y))^(-1)//C/I for 6-sector
CIdB=10*log10(CI)
disp(CIdB,'signal to co-channel interfernce ratio C/I in dB')
