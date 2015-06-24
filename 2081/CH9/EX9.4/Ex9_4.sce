n1=2200;n2=1900;n3=4000;n4=1100;n5=1000;n6=1200;n7=1800;n8=2100;n9=2000;n10=1580;n11=1800;n12=900
TBW=30*10^6//total allocated bandwidth
SBW=25000//simplex channel bandwidth
NS=TBW/SBW//no.of simplex channels
DS=NS/2//no.of duplex channels
NCPC=10
NCPCL=12
TNCC=NCPC*NCPCL////no. of control channels
TNTC=DS-TNCC//no. of traffic channels
NTCPC=TNTC/NCPCL
NUPC=8
NMCPC=8
TNCPC=NMCPC*NTCPC//total no. of calls/cell
disp(TNCPC,'total no. of calls/cell')
H=5/100*3600
Y=60/3600
Aav=H*Y//traffic intensity case(b)
disp(Aav,'average offered traffic load Aav for (case(b)) in Erlangs')
tc=n1+n2+n3+n4+n5+n6+n7+n8+n9+n10+n11+n12
pbms=75/100
nbms=pbms*tc
disp(nbms,'number of mobile subscribers/cluster ')
y=tc/NCPCL
Y1=y/3600
H1=60
Aav1=Y1*H1//traffic intensity case(c)
disp(Aav1,'average offered traffic load Aav for (case(c)) in Erlangs')



