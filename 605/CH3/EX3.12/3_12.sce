//data
R=250    //ohm
V250=60*sqrt(2)/11*exp(-%i*45/180*%pi) //volt
Pd=(real(V250)^2+imag(V250)^2)/(2*R)
printf("\nV250=")
disp(V250)
printf("\nPd=%f W",Pd)