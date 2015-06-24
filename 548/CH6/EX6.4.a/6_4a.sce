pathname=get_absolute_file_path('6_4a.sce')
filename=pathname+filesep()+'6_4a_data.sci'
exec(filename)
clf();
V=linspace(20,300,500);
i = 1;
Cl = 0;Cd = 0;Cl_Cd =0;Thrust = 0;
while(i<=length(V)) 
    Cl(i) = 2*W/(D*S*V(i)^2);
    Cd(i) = Cdo + Cl(i)^2/(%pi*e*AR);
    Cl_Cd(i) = Cl(i)/Cd(i);
    Thrust(i) = W/Cl_Cd(i)/1000;
    Power(i)=Thrust(i)*V(i);
    Pa(i)=P*Pf*746/1000;
   i = i+1; 
end 
xlabel("Velocity (m/s)");
ylabel("Power (KN-m/s)");
plot2d(V,Power,4);
plot2d(V,Pa,5);
disp("the intersection of both graph shows maximum velocity of CP-1 at sea level which is arround 81m/s.")

