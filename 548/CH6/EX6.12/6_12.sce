pathname=get_absolute_file_path('6_12.sce')
filename=pathname+filesep()+'6_12data.sci'
exec(filename)
clf();
V=linspace(20,120,500);
i = 1;
Cl = 0;Cd = 0;Cl_Cd =0;Thrust = 0;
while(i<=length(V)) 
    Cl(i) = 2*Wo/(D*S*V(i)^2);
    Cd(i) = Cdo + Cl(i)^2/(%pi*e*AR);
    Cl_Cd(i) = Cl(i)/Cd(i);
    Cl1_Cd(i)=Cl(i)^1.5/Cd(i)
   i = i+1; 
end 
xlabel("Velocity (m/s)");
plot2d(V,Cl_Cd,3);
plot2d(V,Cl1_Cd,4);
//from graph we can see:
Cl_Cdmax=13.62;//maximum Cl/Cd
Cl1_Cdmax=12.81;//maximum Cl^1.5/Cd
R=(n/c)*Cl_Cdmax*log(Wo/W1)
disp(R,"R=","Range R=(n/c)*(Cl/Cd)*log(Wo/W1)")
E=(n/c)*Cl1_Cdmax*sqrt(2*D*S)*[1/sqrt(W1)-1/sqrt(Wo)]
disp(E,"E=","Endurance E=(n/c)*(Cl^1.5/Cd)*sqrt(2*D*S)*[1/sqrt(W1)-1/sqrt(Wo)]")
printf("\Answer:\n")
printf("\n\Maximum range of CP-1: %f m\n\n",R)
printf("\n\Maximum Endurance of CP-1: %f s\n\n",E)

