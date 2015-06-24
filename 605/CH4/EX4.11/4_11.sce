
for m=1:1:3
    qo=2.5*10^-2
    fc=3*10^8*m/(9*10^-2)
    qc=2*4.5*10^-2/m
    printf("\nm=%f\nfc=%.4e Hz\nlambdaC=%.2e m",m,fc,qc)
    printf("\nTM0=%.4e Hz",fc)
    q=qo/sqrt(1-(qo/qc)^2)
    printf("\nlambda=%.4e m\n",q)
end