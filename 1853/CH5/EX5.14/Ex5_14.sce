
//find the magnetic nd iron loss component of current
E1=440
E2=200
I=0.2
coso=0.18
sino=sqrt(1-coso^2)
Iw=I*coso
Iu=I*sino
disp('Iw='+string(Iw)+'amps'  ,  'Iu='+string(Iu)+'amprs')
