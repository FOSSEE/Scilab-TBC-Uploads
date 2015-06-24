clc;
//page no 641
//problem no 17.1.1
//a)Determination of max gain1
FTL=50;M=12;
NFL=2*FTL;NFLG=(NFL-M);
G_max1=NFLG/2;
disp('dB',G_max1,'a)The max gain is');
//b)Determination of max gain2
IL=3;RLW=20;RLE=40;
NL=(4*IL)+RLW+RLE;
NLG=(NL-M);
G_max2=NLG/2;
disp('dB',G_max2,'The max gain is');
//c)Determination of amplr gain 
LT=15;OM=6;
OLW=(RLW-LT)/2;
OLE=(RLE-LT)/2;
A=OM+OLW+OLE+(2*IL);
disp('dB',A,'The amplr gain is');