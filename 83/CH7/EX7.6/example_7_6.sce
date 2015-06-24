//Chapter 7
//Example 7.6
//page 268
//To calculate the loss formula coefficients of the system 
clear;clc;

Ia=2-%i*0.5;    Ic=1-%i*0.25;
Ib=1.6-%i*0.4;    Id=3.6-%i*0.9;
Za=0.015+%i*0.06;    Zc=0.01+%i*0.04;
Zb=0.015+%i*0.06;    Zd=0.01+%i*0.04;

ID=Id+Ic ;//total load current

//calculation of current distribution factors
printf('\nCurrent distribution factors are :\n')
Ma1=(ID/ID);
Ma2=(0/ID);
Mb1=(-Ic/ID);
Mb2=(Id/ID);
Mc1=(Ic/ID);
Mc2=(Ic/ID);
Md1=(Id/ID);
Md2=(Id/ID);
printf('Ma1=%d\tMb1=%0.4f\tMc1=%0.4f\tMd1=%0.4f\nMa2=%d\tMb2=%0.4f\tMc2=%0.4f\tMd2=%0.4f',Ma1,Mb1,Mc1,Md1,Ma2,Mb2,Mc2,Md2);

//bus voltage calcultion
[V1_mag,V1_ang]=polar(1.0+Ia*Za);
[V2_mag,V2_ang]=polar(1+Ib*Zb);
V1_ang=real(V1_ang)*180/%pi;
V2_ang=real(V2_ang)*180/%pi;
printf('\n\nBus voltages are given by \nV1=%0.3f @ %0.2fdeg PU\tV2=%0.3f @ %0.2fdeg PU',V1_mag,V1_ang,V2_mag,V2_ang);

//current phase angles at the plants
sigma1=atand(imag(Ia)/real(Ia));
sigma2=atand(imag(Ib+Ic)/real(Ib+Ic));
printf('\n\nCurrent phase angles at the plants\nSigma1=%ddeg\tSigma2=%ddeg',sigma1,sigma2);

//plant power factors
pf1=cosd(V1_ang-sigma1);
pf2=cosd(V2_ang-sigma2);
printf('\n\nThe plant power factors are\npf1=%0.4f\tpf2=%0.4f',pf1,pf2);

//calculation of loss coefficients
B11=(Ma1*Ma1*real(Za)+Mb1*Mb1*real(Zb)+Mc1*Mc1*real(Zc)+Md1*Md1*real(Zd))/(V1_mag*V1_mag*pf1*pf1);
B22=(Ma2*Ma2*real(Za)+Mb2*Mb2*real(Zb)+Mc2*Mc2*real(Zc)+Md2*Md2*real(Zd))/(V2_mag*V2_mag*pf2*pf2);
B12=(Ma1*Ma2*real(Za)+Mb1*Mb2*real(Zb)+Mc1*Mc2*real(Zc)+Md1*Md2*real(Zd))/(V1_mag*V2_mag*pf1*pf2);
printf('\n\nThe Loss coefficients in PU are \nB11=%0.5f pu\nB22=%0.5f pu\nB12=%0.5f pu',B11,B22,B12);
printf('\n\nThe Loss coefficients in reciprocal megawatts are \nB11=%0.8f MW^-1\nB22=%0.8f MW^-1\nB12=%0.8f MW^-1',B11/100,B22/100,B12/100);
