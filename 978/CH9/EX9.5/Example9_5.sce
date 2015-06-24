//chapter-9,Example9_5,pg 502

Q=10//Q-factor

m=5//improvement factor

a=(1/((3*Q)-1))//filter factor

Qr=Q*m//rejection Q-factor

ar=(1/((3*Qr)-1))//rejection filter factor

perf=((a-ar)/a)*100//percent change in feedback

printf("percent change in feedback\n")

printf("perf=%.5f ",perf)