
//Example 6.7// ratio
clc;
clear;
Is=5;//in amperes
Ns=200;//no. of secondary turns
f=50;//frequency in hertz
Np=1;//no. of primary turns
Iw=5;//in amperes
Im=8;//amperss
Kt=Ns/Np;//turn ratio
csd1=0.8;//
sd1= sqrt(1-csd1^2);//
Kact1= Kt+((Im*sd1)+(Iw*csd1))/Is;//actual ratio when 0.8 p.f. lagging
Re1= ((Kt-Kact1)/Kact1)*100;//ratio error in percentage when 0.8 p.f. lagging
Pa1=((180/%pi)*(Im*csd1-Iw*sd1))/(Kt*Is);//phase angle in degree when 0.8 pf lagging
csd2=0.8;//
sd2=-0.6;//
Kact2= Kt+((Im*sd2)+(Iw*csd2))/Is;//actual ratio when 0.8 p.f. leading
Re2= ((Kt-Kact2)/Kact2)*100;//ratio error in percentage when 0.8 p.f. leading
Pa2=((180/%pi)*(Im*csd2-Iw*sd2))/(Kt*Is);//phase angle in degree when 0.8 pf leading
disp(Kact1,"actual ratio when 0.8 p.f. lagging")
disp(Re1,"percentage ratio error when 0.8 p.f. lagging")
disp(Pa1,"phase angle when 0.8 p.f. lagging in degree ")
disp(Kact2,"actual ratio when 0.8 p.f. leading")
disp(Re2,"percentage ratio error when 0.8 p.f. leading")
disp(Pa2,"phase angle when 0.8 p.f. leading in degree")
