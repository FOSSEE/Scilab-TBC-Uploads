clc
clear
disp('example 14.19')
zaa=3;zbb=9  //impedence given between line
 pas=1   //power at two units are equal to 1p.u 
par=1    
pbs=1.05  //power at sending end is 1.05 and power at receiving end is 1p.u
pbr=1
i=1 //assume current is 1p.u
los=i*complex(zaa/100,zbb/100)
csd=((abs(los)^2)-pas^2-par^2)/(2*pas*par)  //load angle between two stations
csa=(pas^2+abs(los)^2-par^2)/(2*pas*abs(los))  //angle between source and loss
ta=180-atand(zbb/zaa)-acosd(csa)  //transfering power factor angle
printf("load angle is %.2f\n",cosd(csd))
if sind(ta)<0 then
    printf("real power is %.3fp.u \nreactive power %.3fp.u lagging",cosd(ta),abs(sind(ta)))
   else
           printf("real power is %.3fp.u \nreactive power %.3fp.u leading",cosd(ta),sind(ta))

end
csd2=(abs(los)^2-pbs^2-pbr^2)/(2*pbs*pbr)  //load angle between two stations
csa2=(pbr^2-pbs^2+abs(los)^2)/(2*pbr*abs(los))  //angle between source and loss
    f=180-atand(zbb/zaa)-acosd(csa2)  //transfering power factor angle
disp('(b)')

printf("load angle is %.2f\n",cosd(csd2))
if sind(f)<0 then
    printf("real power is %.3fp.u \nreactive power %.3fp.u lagging",cosd(f),abs(sind(f)))
   else
           printf("real power is %.3fp.u \nreactive power %.3fp.u leading",cosd(f),sind(f))

end
