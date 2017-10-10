clear
//
//case a
//from oc test data shunt admittances are determined as follows
//given
v1=200
i0=1
pc=100
yc=i0/(v1)
printf("\n yc= %e  S",yc)
gc=pc/(v1**2)
printf("\n gc= %e S",gc)
bm=(((0.005**2)-(0.0025**2))**0.5)
printf("\n bm= %e   S",bm)
//from sc test data
p=85
isc=10
vsc=15
req=p/(isc**2)
printf("\n req= %0.1f  ohm",req)
zeq=vsc/(isc)
printf("\n zeq= %0.1f  ohm",zeq)
xeq=(((zeq**2)-(req**2))**0.5)
printf("\n xeq= %0.1f  ohm",xeq)
//case b
a=0.5
//equivalent impedance parameters referred to lv side
re=(a**2)*req
printf("\n req1= %0.1f  ohm",re)
xe=(a**2)*xeq
printf("\n xeq1= %0.1f  ohm",xe)
ze=(a**2)*zeq
printf("\n zeq1= %0.1f  ohm",ze)
