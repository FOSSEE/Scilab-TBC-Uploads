
//example 18.3
//design a cross -regulator and head regulatorfor a distributory channel
clc;funcprot(0);
//givrn
Q=100;           //discharge of parent channel
Qd=15;           //discharge ofdistributory
fsl_u=218.1;     //F.S.L of upstream parent channel
fsl_d=217.9;     //F.S.L of downstream of parent channel
bw_u=42;         //bed width of parent channel upstream
bw_d=38;         //bed width of parent channel downstream
hw=2.5;          //depth of water in parent channel
fsl_dis=217.1;   //F.S.L of distributory
hw_dis=1.5;      //depth of water in distributory
Ge=1/5;          //permissible exit gradient

//design of cross regulator
mprintf("DESIGN OF CROSS-REGULATOR::");
//design of crest and waterway
mprintf("\n\ndesign of crest and waterway:");
cl=fsl_u-hw;
h=fsl_u-fsl_d;
d=fsl_d-cl;
C1=0.557;C2=0.8;
L=Q/(2*C1*(2*9.81)^0.5*h^1.5/3+C2*d*(2*9.81*h)^0.5);
L=round(L*10)/10;
mprintf("\ncrest level=%f m.",cl);
mprintf("\nlength of crest=%f m.",L);
mprintf("\nprovide 4 bays of 7 m each with a clear water-way.");
tw=28+4.5;
mprintf("\nprovide 3 piers of 1.5 m width each.\ntotal width of cross regulator=%f m.",tw);
//design of d/s floor
L=28;
q=Q/L;
Hl=fsl_u-fsl_d;
Ef2=1.89;         //from blench curve
fl_d=fsl_d-Ef2;
mprintf("\n\ndesign of d/s floor:");
mprintf("\nd/s floor level=%f m.; which is higher than d/s bed level.\nadopt floor level =d/s bed level=215.40 m.",fl_d);
Ef1=Ef2+Hl;
//from specific energy curve
D1=0.7;D2=1.65;
cil=5*(D2-D1);     //cistern length
tl=2*16/3;
tl=round(tl*10)/10;
mprintf("\ncistern length =%f m.\nlength of d/s floor=%f m.",cil,tl);
//design of impervious floor
d1=hw/3+0.6;           //depth of u/s cut-off
w=0.5;                //width of cut-off
d2=hw/2+0.6;          //deth of d/s cut-off
d2=2;                 //keep
Hs=fsl_u-(fsl_d-hw);  //maximum static head
n=Ge*d2/Hs;           //n=1/%pi*(lambda)^0.5;
//from exit gradient curves we get
alpha=8;n=0.148;
b=alpha*d2;
mprintf("\n\ndesign of impervious floor:");
mprintf("\ntotal length of impervious floor=%i m.;which is divided as-",b);
mprintf("\nd/s floor length=10.6 m.\nd/s glacis length with 2:1 slope=0.4 m.\nbalance to be provided upstream=5 m.");
d1=1.5;b=16;
alpha_=d1/b;
//hence
fic1=100-28;
fid1=100-19;
t=0.5;
fic1=fic1+(fid1-fic1)*t/d1;
mprintf("\n\npressure calculation:\nupstream cut-off:\npressure =%f percent.",fic1);
d2=2;b=16;
alpha_=d2/b;
//hence
t=0.6;
fie2=31;fid2=22;
fie2=fie2-(fie2-fid2)*t/d2;
mprintf("\ndownstream cut-off:\npressure=%f percent.",fie2);
t=10.6;
p=fie2+(fic1-fie2)*t/b;
p=round(p*10)/10;
mprintf("\ntoe of glacis:\npressure=%f percent.",p);
mprintf("\n\nthickness of floor:\nminimu thickness for u/s floor=0.5 m.");
rho=2.24;
t=fie2*2.7/(100*(rho-1));
t=round(t*100)/100;
mprintf("\nthickness of floor near d/s cut-off=%f m.\nprovide 0.7 m thick floor for last 2.1 m length.",t);
t=1.6/(rho-1);
t=round(t*100)/100;
mprintf("\nthickness of floor at toe of glacis=%f m.",t);
t=6.6;
p=fie2+(fic1-fie2)*t/b;
t=p*2.7/(100*(rho-1));
t=round(t*100)/100;
mprintf("\nthickness of floor at 4 m from toe of glais=%f m.\nprovide 1.1 m thick floor for next 2 m length",t);
t=4.6;
p=fie2+(fic1-fie2)*t/b;
t=p*2.7/(100*(rho-1));
t=round(t*100)/100;
mprintf("\nthickness of floor at 6 m from toe of glais=%f m.\nprovide 0.9 m thick floor for next 2.5 m length",t);

//design of u/s protection
d1=hw/3+0.6;
v=d1;
v=round(v*100)/100;
mprintf("\n\ndesign of u/s protection:\nvolume of block protection=%f cubic metre/metre.",v);
mprintf("\nkeep thickness of protection=1 m.\nprovide 0.8mx0.8mx0.6m thick concret blocks over 0.4 m thick apron in length of 0.6 m.");
cu=2.25*d1;
cu=round(cu*100)/100;
mprintf("\ncubic content of launching apron=%f cubic metre/metre.\nprovide 1 m thick and 3.5 m long launching apron.",cu);
//design of d/s protection
d2=hw/2+0.6;
v=d2;
v=round(v*100)/100;
mprintf("\n\ndesign of d/s protection:\nvolume of inverted filter=%f cubic metre/metre.",v);
mprintf("\nkeep thickness of concrete block=0.6 m.\nprovide 2 rows of 0.8mx0.8mx0.6m thick concret blocks over 0.6 m graded filter for length of 1.6 m.");
cu=2.25*d2;
cu=round(cu*100)/100;
mprintf("\nlaunching apron volume=%f cubic metre/metre.\nprovide 1 m thick launching apron for length of 4.5 m.\nprovide a toe wall 0.4 m wide and 1.5 m deep between filter and launching apron.",cu);

//design of head regulator
mprintf("\n\n\nDESIGN OF DISTRIBUTORY HEAD REGULATOR::");
//design of crest and waterway
mprintf("\n\ndesign of crest and waterway:");
cl=fsl_u-hw+0.5;
h=fsl_u-fsl_dis;
d=fsl_dis-cl;
C1=0.557;C2=0.8;
L=Qd/(2*C1*(2*9.81)^0.5*h^1.5/3+C2*d*(2*9.81*h)^0.5);
L=round(L*100)/100;
mprintf("\ncrest level=%f m.",cl);
mprintf("\nlength of crest=%f m.",L);
mprintf("\nprovide 2 bays of 3.5 m each with a 1 m thick pier in between.");
tw=8;
mprintf("\ntotal width of cross regulator=%f m.",tw);
//design of d/s floor
L=7.5;
q=Q/L;
Hl=fsl_u-fsl_dis;
Ef2=1.58;         //from blench curve
fl_d=fsl_dis-Ef2;
mprintf("\n\ndesign of d/s floor:");
mprintf("\nd/s floor level=%f m.;\nkeepR.L of d/s floor=215.50 m.",fl_d);
Ef1=Ef2+Hl;
//from specific energy curve
D1=0.42;D2=2.55;
cil=5*(D2-D1);     //cistern length
tl=2*14/3;
mprintf("\ncistern length =%f m.",cil);

//design of impervious floor
d1=hw/3+0.6;           //depth of u/s cut-off
w=0.5;                //width of cut-off
d2=hw_dis/2+0.6;          //deth of d/s cut-off
d2=2;                 //keep
Hs=fsl_u-215.5;     //maximum static head
n=Ge*d2/Hs;           //n=1/%pi*(lambda)^0.5;
//from exit gradient curves we get
alpha=7;n=0.154;
b=alpha*d2;
mprintf("\n\ndesign of impervious floor:");
mprintf("\ntotal length of impervious floor=%i m.;which is divided as-",b);
mprintf("\nlength below the toe of glacis=10.5 m\nlength of d/s glacis at 2:1 slope=1.2 m.\nwidth of crest=1 m.\nlength of u/s glacis at 1:1 slope=0.5 m.\nu/s floor:balnce=0.8 m.");
d1=1.5;b=16;
alpha_=d1/b;
//hence
fic1=100-28;
fid1=100-19;
t=0.5;
fic1=fic1+(fid1-fic1)*t/d1;
mprintf("\n\npressure calculation:\nupstream cut-off:\npressure =%f percent.",fic1);
d2=2;b=16;
alpha_=d2/b;
//hence
t=0.6;
fie2=31;fid2=22;
fie2=fie2-(fie2-fid2)*t/d2;
mprintf("\ndownstream cut-off:\npressure=%f percent.",fie2);
t=10.6;
p=fie2+(fic1-fie2)*t/b;
p=round(p*100)/100;
mprintf("\ntoe of glacis:\npressure=%f percent.",p);
mprintf("\n\nthickness of floor:\nminimu thickness for u/s floor=0.5 m.");
rho=2.24;
t=p*2.6/(100*(rho-1));
t=round(t*100)/100;
mprintf("\nthickness under the crest=1 m.");
mprintf("\nthickness of floor at toe of glacis=%f m.",t);
t=9.5;
p=fie2+(fic1-fie2)*t/b;
t=p*2.7/(100*(rho-1));
t=round(t*100)/100;
mprintf("\nthickness of floor at 2 m from toe of glais=%f m.\nprovide 1.1 m thick floor for next 4 m length",t);
t=4.5;
p=fie2+(fic1-fie2)*t/b;
t=p*2.7/(100*(rho-1));
t=round(t*100)/100;
mprintf("\nthickness of floor at 6 m from toe of glais=%f m.\nprovide 0.9 m thick floor for next 2.5 m length",t);
t=2;
p=fie2+(fic1-fie2)*t/b;
t=p*2.7/(100*(rho-1));
t=round(t*100)/100;
mprintf("\nthickness of floor at 8.5 m from toe of glais=%f m.\nprovide 0.7 m thick floor for next 2 m length",t);

//design of upstream protection
d=hw/3+0.6;
d=round(d*10)/10;
mprintf("\n\ndesign of u/s protection:\nu/s scour depth=%f m.\nprovide same protection as in cross regulator",d);

//design of d/s protection
d2=hw_dis/2+0.6;
v=d2;
mprintf("\n\ndesign of d/s protection:\nvolume of inverted filter=%f cubic metre/metre.",v);
mprintf("\nkeep thickness of concrete block=0.5 m.\nprovide 2 rows of 0.8mx0.8mx0.5m thick concret blocks over 0.5 m thick graded filter.");
cu=2.25*d2;
mprintf("\nlaunching apron volume=%f cubic metre/metre.\nprovide 1 m thick launching apron for length of 3.5 m.\nprovide a masonary toe wall 0.4 m wide and 1.2 m deep between filter and launching apron.",cu);


