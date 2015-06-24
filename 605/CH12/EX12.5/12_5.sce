
Ve=2
Be=%pi/2
Kd=Ve/sin(Be)
printf("\nKd=%.0f",Kd)
//Ko=dW/Vd
Ko=2*%pi*100*1000
dWH=Kd*Ko
printf("\ndWH=Kd*Ko=%.4e rad/s",dWH)
dfH=dWH/(2*%pi)
printf("\ndfH=dWH/(2*pi)=%.4e Hz",dfH)