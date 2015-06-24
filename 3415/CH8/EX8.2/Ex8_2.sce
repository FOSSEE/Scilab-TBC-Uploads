//fiber optic communications by joseph c. palais
//example 8.2
//OS=Windows XP sp3
//Scilab version 5.4.1
clc
clear all
//given
n1=1.465//core refractive index
n2=1.46//cladding refractive index
lambda1=1.3//wavelength in um
lambda2=1.55//wavelength in um
a=3.96//core radius in um
d=0:0.1:5//offset in um
//to find
V1=2*%pi*a/lambda1*(sqrt(n1^2-n2^2))//V number for lambda1
V2=2*%pi*a/lambda2*(sqrt(n1^2-n2^2))//V number for lambda2
wbya1=0.65+1.69*V1^(-1.5)+2.879*V1^(-6)//mode field radiusto core radius for lambda1
wbya2=0.65+1.69*V2^(-1.5)+2.879*V2^(-6)//mode field radiusto core radius for lambda2
w1=wbya1*a//mode field radius in um for lambda1
w2=wbya2*a//mode field radius in um for lambda2
dbyw1=d./w1//d/w ratio for lambda1
dbyw2=d./w2//d/w ratio for lambda2
L1=-10*log(exp(-(dbyw1)^2))//Coupling Loss for lambda1
L2=-10*log(exp(-(dbyw2)^2))//Coupling Loss for lambda2
xtitle( 'Coupling Loss Vs Lateral misalignment', 'Lateral misalignment in um', 'Coupling Loss in dB') ;
plot(d,L1,'d')
plot(d,L2,'*cya--')
hl=legend(['Loss at Lambda1=1.3um';'Loss at Lambda2=1.55um']);

