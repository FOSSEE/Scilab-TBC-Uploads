r1=1
y=20*log10(r1/(2*r1))
Delc1=round(y)//change in recieved signal strengths
printf('\ndel when r2=2r1 = %.d dB',Delc1)
Delc2=20*log10(r1/(10*r1))////change in recieved signal strengths
printf('\ndel when r2=10r1 = %.f dB',Delc2)
