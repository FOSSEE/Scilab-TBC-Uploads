r1=1
y=40*log10(r1/(2*r1))
Delc1=round(y)//change in recieved signal strengths
disp(Delc1,'del in db when r2=2r1')
Delc2=40*log10(r1/(10*r1))//change in recieved signal strengths
disp(Delc2,'delc in db when r2=10r1')
