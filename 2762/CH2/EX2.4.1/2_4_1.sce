//Transport Processes and Seperation Process Principles
//Chapter 2
//Example 2.4-1
//Principles of Momentum Transfer and Overall Balances
//given data
dely=0.5;//dist between 2 plates in cm
delv=10;//vel diff along z in cm/s
mu=0.0177//viscosity in CP
//a) after integrating shear stress(tao)= mu*(delv)/dely
tao=mu*(delv/dely);//g/(s2*cm)
//shear rate= delv/dely as the vel change is linear with y
SR=delv/dely;
mprintf("shear stress in cgs = %f dyn/cm2",tao)
mprintf(" shear rate in cgs = %f s-1",SR)
//b) in lb force
mulb=mu*(6.7197/100);//viscosity changes to lbm/(ft*s)
taolb=(mulb*delv)/(dely*32.174);//lbf/ft2
mprintf(" shear stress in english units = %f lbf/ft2",taolb)
mprintf(" shear rate in english units = %f s-1",SR)
//c)
taosi=(mu*0.1*delv)/(dely);
mprintf(" shear stress in si = %f N/m2",taosi)
mprintf(" shear rate in si = %f s-1",SR)
//end
