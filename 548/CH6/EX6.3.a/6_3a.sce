pathname=get_absolute_file_path('6_3a.sce')
filename=pathname+filesep()+'6_3a_data.sci'
exec(filename)
clf();
i = 1;
Cl = 0;Cd = 0;Cl_Cd =0;Thrust = 0;
while(i<=length(V)) 
    Cl(i) = 2*W/(D*S*V(i)^2);
    Cd(i) = Cdo + Cl(i)^2/(%pi*e*AR);
    Cl_Cd(i) = Cl(i)/Cd(i);
    Thrust(i) = W/Cl_Cd(i)/1000;
    Power(i)=Thrust(i)*V(i);
   i = i+1; 
end 
xlabel("Velocity (m/s)");
ylabel("Power (KN-m/s)");
plot2d(V,Power,5);

