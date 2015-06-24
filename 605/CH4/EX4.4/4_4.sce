Q=[0:0.01:2*%pi]
q=[0:0.01:%pi]
k=integrate('60*%pi/sin(Q)*cos(%pi/2*cos(Q))^2','Q',0,%pi/2)
printf("\nk=%.2f W",4*k*%pi)