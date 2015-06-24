//Ex 9.2
//Band Stop Filter Design
//a
clc;
w1=1200;
w2=2000;
s=%s;
w=poly(0,'w');
St=poly(0,'St');
wc=1; //For normalised Prototype
wd1t=poly(0,'wd1t');
wt1=2500;
wx1=(wt1*(w2-w1)*wd1t)/(-wt1^2+w2*w1);
wt2=400;
wx2=(wt2*(w2-w1)*wd1t)/(-wt2^2+w2*w1);
disp(w);
wx=wx1; // required attenuation to less
        // than -3dB for wx > -0.5195wd1t
wd1t=wc/0.5195;
//b
//Let n=4
hb2=1/((s^2+.7654*s+1).*(s^2+1.8478*s+1));
hb21=horner(hb2,(%i*w));
disp(hb21);
hb22=horner(hb21,wx);
disp(hb22);
hb23=horner(hb22,-%i*St);
disp(hb23);