clc
//Ex5_4 uses a figure given in textbook
Ia=50 //current in amperes
IB=50 //current in amperes
nB=1200 //speed in rev/min
ratio=0.01 //ratio of Nsc/Nf ,unit less
Isc=0.6*Ia //equation given in textbook
mprintf("Isc=%dA\n",Isc)
If=1.3 //field current in amperes
mprintf("If*=If+(Nsc/Nf)*Isc=%fA\n",If+(ratio*Isc))
Eg1=132.5 //voltage in volts
mprintf("Ka`Φ=Eg*/nB=%fV-min/rev\n",Eg1/nB)//ans may vary due to roundoff error
n=1140 //speed in rev/min
Eg=n*(Eg1/nB)
mprintf("Eg=Ka`n=%fV\n",Eg)//ans may vary due to roundoff error
ra=0.2 //resistance in ohms
Ra=0.03+ra //by kirchodff's law and parallel combination or resistances
mprintf("Ra=%fΩ\n",Ra)
VTfl=Eg-(Ia*Ra)
mprintf("VTfl=%fV\n",VTfl)//ans may vary due to roundoff error
mprintf("If*=If+0=%fA\n",If)
Eg2=125 //voltage in volts
VTnl=Eg*(n/nB)
mprintf("Eg=Eg*(n/nB)=%fV\n",VTnl)//ans may vary due to roundoff error
mprintf("Voltage Regulation=(VTnl-VTfl)/VTfl=%f%c",((VTnl-VTfl)/VTfl)*100,'%') //ans may vary due to roundoff error





