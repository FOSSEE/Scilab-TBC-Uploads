//speed force and power//
pathname=get_absolute_file_path('7.05.sce')
filename=pathname+filesep()+'7.05-data.sci'
exec(filename)
//Width of the model(in m):
wm=S*wp*0.3048
//Area of model (in m^2):
Am=S^2*Ap*0.305^2
[m n]=size(V)
i=1:n
//Aerodynamic drag coefficient():
Cd=2.*Fd(i)/d./(V(i))^2/0.0305
//Reynolds number:
Re=V(i)*wm/v
plot(Re,Cd);
a=gca()
a.data_bounds=[100000,0.4;500000,0.6]
xtitle('Aerodynamic drag coefficient vs drag force','Reynolds number','Model Drag Coeff.')
//It is seen that drag coefficient becomes constant at CD=0.46above Re=4*10^5 at which speed of air is 40m/s
CDc=0.46;
Va=40;
//Drag force (in N):
FDp=CDc/2*d*(Vp*5/18)^2*Ap*0.305^2
//Power required to pull prototype at 100 kmph(in W)
Pp=FDp*Vp*5/18
printf("\n\nRESULTS\n\n")
printf("\n\nSpeed above which Cd is constant: %.3f m/sec\n\n",Va)
printf("\n\nDrag Force: %.3f kN\n\n",FDp/1000)
printf("\n\nPower required to pull prototype at 100 kmph: %.3f kW\n\n",Pp/1000)
