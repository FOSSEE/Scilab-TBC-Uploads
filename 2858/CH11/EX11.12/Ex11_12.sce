//example 11.12
clc; funcprot(0);
z1=21/2;
Lg=9;
Bg=6;
Qg=500*1000;
Cc1=0.3;
Cc2=0.2;
Cc3=0.25;
H2=12;
H3=6;
H1=21;
e1=0.82;
e2=0.7;
e3=0.75;
s1=Qg/(Lg+z1)/(Bg+z1); //sigma1
s2=500*1000/(9+27)/(6+27);//sigma2
s3=500*1000/(9+36)/(6+36);//sigma3
ss1=6*105+(27+21/2)*(115-62.4);//sigmadash1
ss2=6*105+(27+21)*(115-62.4)+(120-62.4)*6;//sigmadash2
ss3=6*105+48*(115-62.4)+12*(120-62.4)+3*(122-62.4);//sigmadash3
sc1=Cc1*H1/(1+e1)*log10((ss1+s1)/ss1);
sc2=Cc2*H2/(1+e2)*log10((ss2+s2)/ss2);
sc3=Cc3*H3/(1+e3)*log10((ss3+s3)/ss3);
sc=sc1+sc2+sc3;
disp(sc*12,"total settlement in inch");

