clc

T=300 //K
k=8.617*10**-5//eV/K
e=1.6*10**-19 //C
IE=1*10^-3//A
Cje=1*10^-12//F
xB=0.5*10^-4//cm
Dn=25// cm2/s
xdc=2.4*10^-4//cm
vs=10^7
rc=20//ohm
Cu=0.1*10^-12//F
Cs=0.1*10^-12//F
beta=100

re1=(k*T)/IE
disp(re1,"re1 in ohm is=")
taue=re1*Cje
disp(taue,"taue in sec is=")
taub=xB^2/(2*Dn)
disp(taub,"taub in sec is=")
taub1=xdc/vs
disp(taub1,"taub in sec is=")
tauc=rc*(Cu+Cs)
disp(tauc,"tauc in sec is=")
tauec=taue+taub+taub1+tauc
disp(tauec,"tauec in sec is=")
ftau=1/(2*%pi*tauec)
disp(ftau,"ftau in GHz is=")
fbeta=ftau/beta
disp(fbeta,"fbeta in Hz is=")

