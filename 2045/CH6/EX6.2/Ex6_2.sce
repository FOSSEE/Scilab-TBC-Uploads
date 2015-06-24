//pagenumber 337 example 2
clear
colcur=5*10^-3;//ampere
vce=10;//volt
hfe=100;
hie=600;//ohm
cugain=10;
fqu=10*10^6;//hertz

tracat=3*10^-12;//farad
voltag=26*10^-3;//volt
fbeta1=((((hfe^2)/(cugain^2))-1)/fqu^2)^(1/2);
fbeta1=1/fbeta1;
fq1=hfe*fbeta1;
cbe=colcur/(2*3.14*fq1*voltag);
rbe=hfe/(colcur/voltag);
rbb=hie-rbe;
disp("fbeta   =   "+string((fbeta1))+"hertz");
disp("f   =   "+string((fq1))+"hertz");
disp("cbe   =   "+string((cbe))+"farad");
disp("rbe   =   "+string((rbe))+"ohm");
disp("rbb   =   "+string((rbb))+"ohm");

