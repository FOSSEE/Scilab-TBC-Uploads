//find dia using two diffrnt theories
clc
//soltion
//given
fs=700//N/mm^2
M=10*10^6//N-mm
T=30*10^6//N-mm
Fs=2//factor of safety
E=210*10^3//N/mm^2
m=4
pi=3.14
//let d be dia of shaft in mm
//Z=(pi/32)*d^3//mm^3
//f1=M/Z=101.8*10^6/d^3//N/mm^2
//t=16*T/(pi*d^3)=152.8*10^6/d^3//N/mm^2
//ft1=(f1/2)+(0.5*sqrt((f1^2)+(4*t^2)))
//ft1=211.9*10^6/d^3//N/mm^2/max prin stress
//ft2=(f1/2)-(0.5*sqrt((f1^2)+(4*t^2)))//min prin stress
//ft2=-110.1*10^6/d^3//N/mm^2
//acc to max shear stress theory
//Tmax=(ft1-ft2)/2=161*10^6/d^3//max shear stress theory
//Tmax=fs/(2*Fs)
//161*10^6/d^3=700/(2*2)
d=(161*10^6/175)^(1/3)//mm
//acc to max strain energy theory
//1/(2*E)*[ft1^2+ft2^2-(2*ft1*ft2/m)]=1/(2*E)*[fs/Fs]^2
//ft1^2 + ft2^2- (2*ft1*ft2/m)=[fs/Fs]^2
//[211.9*10^6/d2^3]^2 + [-110.1*10^6/d2^3]^2 + [2*211.9*10^6*110.1*10^6*0.25/d2^6]=[700/2]^2
//68689*10^12/d2^6=122500
d2=(68689*10^12/122500)^(1/6)//mm
printf("the dia of shaft using max shear stress theory is,%f mm\n",d)
printf("the dia of shaft using max strain energy theory is,%f mm",d2)
