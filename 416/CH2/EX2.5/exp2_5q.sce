clc
disp("example 2.5")
lf=0.5917;ml=100;ic=125; //lf=load factor,ic=installed capacity,ml=maximum load,cf=capacity factor,uf=utillization factor
cf=(ml*lf)/ic;uf=ml/lf
printf("capacity factor =%f",cf)
printf("\nutilisation factor =%f",uf)
