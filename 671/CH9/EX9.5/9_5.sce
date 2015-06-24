F2=850
F1=400
lambda=123.6/180*%pi
ppp=1.408/1000

theta=%pi-lambda
Fr=sqrt(F1*F1+F2*F2-2*F1*F2*cos(theta))

fluxr=2/%pi*ppp*Fr
disp(fluxr)
