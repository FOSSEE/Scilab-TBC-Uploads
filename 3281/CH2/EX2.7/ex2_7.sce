//Page Number: 95
//Example 2.5
clc;
//Given,
c=3D+8; //m/s
a=4; //cm
b=2; //cm

//(i) Mode
lamc=2*a; //cm
lamcm=lamc/100; //m
fc=c/lamcm;
//20% above fc
f=1.2*fc; //Hz

//Operating wavelength
lam1=c/f; //cm

//For TE10 mode
lamc10=2*b;//cm
lamcm10=lamc10/100;//m
fc10=c/lamcm10;
disp('Hence mode of operation is TE10','Hz',fc,'Since guide is operating at');

//(ii)Guide wavelength
lamm1=lam1*100;//cm
lamg=lamm1/(sqrt(1-(lamm1/lamc)^2));
disp('cm',lamg,'Guide wavelength:');

//(iii) Phase velocity
vp=f*lamg;
disp('m/s',vp/100,'Phase velocity:');

//(iii) Group velocity
vg=c^2/vp;
disp('m/s',vg,'Group velocity:');
