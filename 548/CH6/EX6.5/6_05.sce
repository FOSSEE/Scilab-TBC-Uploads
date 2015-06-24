pathname=get_absolute_file_path('6_05.sce')
filename=pathname+filesep()+'6_05data.sci'
exec(filename)
clf();
V=linspace(40,300,500);
i = 1;
Cl = 0;Cd = 0;Cl_Cd =0;Thrust = 0;Vo=0;
while(i<=length(V)) 
    Cl(i) = 2*W/(D*S*V(i)^2);
    Cd(i) = Cdo + Cl(i)^2/(%pi*e*AR);
    Cl_Cd(i) = Cl(i)/Cd(i);
    Vo(i)=V(i)*(D/Do)^0.5;//corresponding velocity points at sea level
    Thrust(i) = W/Cl_Cd(i)/1000;//unit KN
    Power(i)=Thrust(i)*Vo(i)//unit KN-m/s
    Pa(i)=D*Tf*Vo(i)/(Do*1000);//power(KN-m/s) at height 6706.5 m corresponding to velocity
      i = i+1; 
end 
xlabel("Velocity (m/s)");
ylabel("Power (KN-m/s)");
plot2d(Vo,Power,4);
plot2d(Vo,Pa,5)
printf("\nmaximum velocity for CJ-1 approx 210m/s(as seen from graph)")