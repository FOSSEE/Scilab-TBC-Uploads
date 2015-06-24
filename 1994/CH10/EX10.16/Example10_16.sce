//Chapter-10,Example10_16,pg10_52
sf=0.05
//Tst=Tfl
Ifs=1/6//Isc/Ifl=6
x=sqrt((Ifs^2)/sf)//tapping on transformer
t=x*100
Ist=(x^2)*6
printf("supply current\n")
printf("Ist=%.2f times Ifl",Ist)
