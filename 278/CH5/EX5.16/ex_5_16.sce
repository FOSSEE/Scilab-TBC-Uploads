//find dia of bolt using all theories
clc
//solution
//given
Pt1=10000//N
Ps=5000//N
fs=100//N/mm^2
m=10/3
pi=3.14
//let d be diameter of bolt in mm
//A=(pi/4)*d^2=0.7854*d^2//mm^2
//f1=Pt1/A=12.73/d^2//kN/mm^2
//t=Ps/A=6.365/d^2//kN/mm^2
//fs=[(f1^2)+(0.5*sqrt(f1^2 + 4*t^2))]//acc to max principal stress theory
//fs=15.365/d^2//kN/mm^2
d=sqrt(15365/fs)//mm
//using max shear stres theory
Tm=fs/2//N/mm^2
//Tm=0.5*[f1^2+ 4*t^2]
//Tm=9000/d1^2//N/mm^2
d1=sqrt(9000*2/fs)//mm
//using max principal strain theory
//we know
//fs=[(f1^2)+(0.5*sqrt(f1^2 + 4*t^2))]//
//fs=15365/d2^2//N/mm^2//max pricipla stress
//fs2=[(f1^2)-(0.5*sqrt(f1^2 + 4*t^2))]//min principal stress
//fs2=-2635/d2^2//N/mm^2
//fs/E-(fs2/(m*E))=fs/E
//15365/d2^2+2635/(3.33*d2^2)=100
d2=sqrt(16156/100)//mm
//using max strain energy theory
//fs^2+fs^2-2*fs*fs2/m=fs^2
//[15365/d3^2]^2+[-2635/d3^2]^2+(2*15365*2635/d3^4/3.33)=100^2
//[23600/d3^4]+[694/d3^4]+[2430/d3^4]=1
d3=[26724]^(1/4)//mm
//using max distortion energy theory
//(fs^2)+(fs2)^2-(2*fs*fs2)=fs^2
//[15365/d4^2]^2+[2635/d4^2]^2+(2*15365*2635/d4^4)=100^2
//32391/d4^4=1
d4=(32391)^(1/4)//mm
printf("the dia og bolt using max prin stress theory is,%f mm\n",d)
printf("the dia of bolt using max shear stress thewory is,%f mm\n",d1)
printf("the dia of bolt using max prin strain theory is ,%f mm\n",d2)
printf("the dia of bolt using max strain energy theory is,%f mm\n",d3)
printf("the dia of boltusing distortion energy is,%f mm\n",d4)