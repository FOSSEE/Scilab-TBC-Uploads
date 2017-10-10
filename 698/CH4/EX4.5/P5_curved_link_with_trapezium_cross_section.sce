clc
//Example 4.5
//Curved link with trapezium cross-section

//------------------------------------------------------------------------------

//Given data
ro=0.1 //m
ri=0.05 //m
h=0.05 //m
bo=0.025 //m
bi=0.05 //m
P=15000 //N
A=(bi+bo)*h /2

res5=mopen(TMPDIR+'5_curved_link_with_trapezium_cross_section.txt','wt')
mfprintf(res5,'(a) Maximum stress occurs at internal radius of link\n\tSi=(M*hi)/(A*e*ri)\n\n')

mfprintf(res5,'(b)To determine e:\n\t')
mfprintf(res5,'rn=((bi+bo)/2)*h / ((((bi*ro - bo*ri)/h)*log(ro/ri)) - (bi-bo))\n')
rn=((bi+bo)/2)*h / (((((bi*ro - bo*ri)/h)*log(ro/ri)) - (bi-bo)))
mfprintf(res5,'\t=%0.4f mm\n\n',rn* 10^3)
mfprintf(res5,'\tR=ri+ (h*(bi+ 2*bo))/(3*(bi+bo))\n')
R=ri+ (h*(bi+ 2*bo))/(3*(bi+bo))
mfprintf(res5,'\t=%0.4f mm\n\n',R* 10^3)
e=R-rn
mfprintf(res5,'\te=R-rn =%0.4f mm\n\n',e* 10^3)

mfprintf(res5,'(c)Finding the stress\n')
M=P*R
hi=rn-ri
Si=(M*hi)/(A*e*ri)
mfprintf(res5,'\tSi=%0.3f Mpa',Si* 10^-6)

mclose(res5)
editor(TMPDIR+'5_curved_link_with_trapezium_cross_section.txt')
//------------------------------------------------------------------------------
//-----------------------------End of program-----------------------------------