
//
//i=40sin 314t 
//i=Imsin wt
Im=40
w=314
Iav=Im/1.414
Irms=Im*2/3.14
f=w/(2*3.14)
Ff=Irms/Iav
Pf=Im/Irms
disp('peak factor='+string(Pf)+ '  '  ,  'form factor='+string(Ff)+ '  ' ,  'frequency ='+string(f)+ '  ')
