clc
clear
disp('example 20.1')
lod=1 //industrial installation load
pf=0.78  //power factor
tf=200   //tariff 
md=3.5   //extra maximum demand
ic=500   //installation of capacitor
id=0.15  //interest and depreciation
lf=0.8  //load factor
sinp=ic*id/tf
ph2=asind(sinp)
epf2=cosd(ph2)
ph1=acosd(pf)
ph1=round(ph1*10^2)/10^2
ph2=round(ph2*10^2)/10^2
q=lod*(tand(ph1)-tand(ph2))
q=round(q*10^4)/10^4
ikva=lod/pf
ikv=round(ikva*(10^5))/10^2
aeu=lod*lf*8760*10^6
eb=ikv*tf+aeu*md
printf("(a)\neconomic power factor %.3flagging \n(b) \ncapacitor kVAr to improve the power factor %.4f \n(c) \ninitial kVA %.2fKVA \nannual energy used %0.3ekWh \nelectrical bill Rs%e per year",epf2,q,ikv,aeu,eb)
kvc=round((lod*10^3/(round(epf2*1000)/10^3))*10^2)/10^2
ebc=kvc*tf+aeu*md
aidc=q*10^3*ic*id
te=ebc+aidc
asc=eb-te
printf("\n(d)\nKVA after installation of capacitors %.2fKVA \n",kvc)
printf("energy bill after installation of capacitor Rs%e per year \n",ebc)
printf("annual interest and depreciation of capacitor bank Rs%.1fper year \ntotal expendition after installation of capacitors Rs%e per year \n annual savings due to installation of capacitors Rs%d per year",aidc,te,asc)