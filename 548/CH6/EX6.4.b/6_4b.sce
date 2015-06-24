pathname=get_absolute_file_path('6_4b.sce')
filename=pathname+filesep()+'6_4b_data.sci'
exec(filename)
clf();
V=linspace(40,300,500);
i = 1;
Cl = 0;Cd = 0;Cl_Cd =0;Thrust = 0;
while(i<=length(V)) 
    Cl(i) = 2*W/(D*S*V(i)^2);
    Cd(i) = Cdo + Cl(i)^2/(%pi*e*AR);
    Cl_Cd(i) = Cl(i)/Cd(i);
    Thrust(i) = W/Cl_Cd(i)/1000;//unit KN
    Power(i)=Thrust(i)*V(i)//unit KN-m/s
    Pa(i)=D*Tf*V(i)/(Do*1000);//power(KN-m/s) at height 6706.5 m corresponding to velocity
   i = i+1; 
end 
xlabel("Velocity (m/s)");
ylabel("Power (KN-m/s)");
plot2d(V,Power,4);
plot2d(V,Pa,5);
disp("As we can see the higher intersection point of both curve is arround 294m/s(approx),which is the maximum velocity for CJ-1 at 6705.6 meter.")