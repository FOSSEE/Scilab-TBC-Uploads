//Chapter-10,Example10_20,pg10_59
Po=50*735.5//(in W)
s=0.04
//Rcl=X...............rotor copper loss
//Sil=1.25X...........stator iron loss
//Ml=Y, Y=(Y+1.25X)/3, Y=0.625X
//TL=Sil+Rcl+Scl+Ml, TL=3.875X.........(a)
//Pm=Po+Y, 36775+625X..........(1)
//Pc=Pm*s/(1-s).............(2)
//Pc=X, from (1) and (2)
X=(s*Po)/(1-s-s*0.625)
TL=3.875*X//from (a)
n=Po*100/(Po+TL)
printf("efficiency on full load\n")
printf("n=%.2f ",n)
