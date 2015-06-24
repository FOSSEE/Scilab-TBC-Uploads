N=32
Rkm=1.6
Acell=(3*sqrt(3)/2)*(Rkm^2)
TA=N*Acell//total service area
Tc=336
n=7
Ncpc=Tc/n//number of channels per cell
TSC=Ncpc*N//total sysytem capacity
N1=128
Ahex=TA/N1
R=sqrt(Ahex/(1.5*sqrt(2)))
NCap=Ncpc*N1
disp(TA,'total service area in kmsqr')
disp(Ncpc,'number of channels per cell')
disp(TSC,'total sysytem capacity in no. of channels')
disp(R,'radius of the new smaller cell in km')
disp(NCap,'new system capacity in no. of channels')
