V=250
Ia=25
n=1000
KaNfNse=V/Ia*60/2/%pi/n
T=KaNfNse*Ia*Ia
Ia=sqrt(V*2/KaNfNse/sqrt(KaNfNse*2*%pi*n/60*2*%pi*n/60/T/2))
w=sqrt(KaNfNse*2*%pi*n/60*2*%pi*n/60/T/2)*Ia
n=w*60/2/%pi

disp(n)
disp(Ia)
