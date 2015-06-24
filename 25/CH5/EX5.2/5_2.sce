//example:-5.2,page no.-212.
//program to compute reflection coefficient.
a=0.03485;b=0.01580;eipsilao=8.854*10^-12;muo=4*%pi*10^-7;
f=4.5*10^9;
w=2*%pi*f;  // angular frequency.
// for z<0 region air filled.
eipsilar=2.56;  //for z>0 region.
ko=w*sqrt(muo*eipsilao);
k=ko*sqrt(eipsilar);
Ba=sqrt(ko^2-(%pi/a)^2); // propagation constant in air region z<0.
Bd=sqrt(k^2-(%pi/a)^2);  // propagation constant in dielectric region z>0.
Zoa=(ko*377)/Ba;
Zod=(ko*377)/Bd;
tao=(Zod-Zoa)/(Zod+Zoa);
disp(tao,'reflection coefficient')