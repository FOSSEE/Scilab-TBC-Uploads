
Ve=2
Bemax=%pi/2
Kd=Ve/Bemax
printf("\nKd=%.4f",Kd)
Ko=2*%pi*10^5
dWH=Kd*Ko*Bemax
printf("\ndWH=Kd*Ko*Bemax=%.4e rad/s",dWH)
printf("\ndfH=dWH/(2*pi)=%.2e Hz",dWH/(2*%pi))