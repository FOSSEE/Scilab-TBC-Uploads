pathname=get_absolute_file_path('6_13.sce')
filename=pathname+filesep()+'6_13data.sci'
exec(filename)
clf();
V=linspace(20,400,500);
i = 1;
Cl = 0;Cd = 0;Cl_Cd =0;Thrust = 0;
while(i<=length(V)) 
    Cl(i) = 2*Wo/(D*S*V(i)^2);
    Cd(i) = Cdo + Cl(i)^2/(%pi*e*AR);
    Cl_Cd(i) = Cl(i)/Cd(i);
    Cl1_Cd(i)=Cl(i)^0.5/Cd(i)
   i = i+1; 
end 
xlabel("Velocity (m/s)");
plot2d(V,Cl_Cd,3);
plot2d(V,Cl1_Cd,4);
//from graph we can see:
Cl_Cdmax=16.9;//maximum Cl/Cd
Cl1_Cdmax=23.4;//maximum Cl^0.5/Cd
R=[sqrt(Wo)-sqrt(W1)]*Cl1_Cdmax*2*(sqrt(2/(D*S))/c);
disp(R,"R=","Range R=[sqrt(Wo)-sqrt(W1)]*Cl^.5/Cd*2*(sqrt(2/(D*S))/c)")
E=(Cl_Cdmax*log(Wo/W1))/c;
disp(E,"E=","Endurance E=(Cl_Cdmax*log(Wo/W1))/c")
printf("\Answer:\n")
printf("\n\Maximum range of CJ-1: %f m\n\n",R)
printf("\n\Maximum Endurance of CJ-1: %f s\n\n",E)

