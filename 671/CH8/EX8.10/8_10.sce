P=50E3
a=2200/110

/////OC Parameters
Poc=400
Ioc=10
Voc=110

Y0=Ioc/Voc
Gi=Poc/Voc/Voc
disp(Gi)
Bm=sqrt(Y0*Y0-Gi*Gi)
disp(Bm)

///////////Referred to HV side
GiHV=Gi/a/a
disp(GiHV)
BmHV=Bm/a/a
disp(BmHV)

//////////Per unit
GiPU=Gi*P/Voc/Voc
BmPU=Bm*P/Voc/Voc
disp(GiPU)
disp(BmPU)
