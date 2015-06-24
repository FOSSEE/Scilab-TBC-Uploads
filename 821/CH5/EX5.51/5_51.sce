lf=80;//Latent heat of fusion of Ice in cal per gram//
lv=540;//Latent heat of evaporation of water in cal per gram//
Tf=273;//fusion temperature in kelvin//
Tb=373;//Boiling temperature in kelvin//
dTb=Tb-Tf;//change in temperature//
dTf=(dTb*Tf^2*lv)/(Tb^2*lf*1000);
FP=0-dTf;//Freezing point of the solution//
printf('The Freezing point of the solution=FP=%f',FP);
