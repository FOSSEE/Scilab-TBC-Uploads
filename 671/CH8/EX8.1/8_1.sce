V1=3300
f=50
N1=100
N2=300
Z=100+35*%i
flux_max=V1/(sqrt(2)*%pi*f*N1)
V2=V1*N2/N1
I2=V2/Z
I1=N2/N1*I2
S=V1*conj(I1)
Z1=Z*(N1/N2)^2

disp(flux_max)
disp(I1,I2)
disp(real(S),imag(S))
disp(Z1)