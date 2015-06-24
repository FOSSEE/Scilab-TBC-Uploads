clc
clear
disp('example 13 11')
n1=5;x=0.4;d=0.1;g=20  //given
mva=(g/x)+(g*(n1-1)/(x+n1*d))
n2=10  //given
mva2=(g/x)+(g*(n2-1)/(x+n2*d))
disp('a')
printf("fault MVA =(g/x)+(g*(n-1)/(x+nd)) \n fault level is to equal to fault MVA if n=infinity")
disp('b')
printf(" MVA=%.2fMVA if n=%d \n MVA=%.2fMVA if n=%d",mva,n1,mva2,n2)
fl=g*((1/x)+(1/d))
disp('c')
printf("\nfault level %dMVA",fl)
