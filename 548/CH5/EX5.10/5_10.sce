pathname=get_absolute_file_path('5_10.sce')
filename=pathname+filesep()+'5_10_data.sci'
exec(filename)
clf();
i = 1;
while(i<=length(M)) 
    Cpcr(i)=(2/(y*M(i)^2))*[[(2+(y-1)*M(i)^2)/(y+1)]^(y/(y-1))-1]
    Cpmin(i)=Cpomin/sqrt(1-M(i)^2);
   i = i+1; 
end 
xlabel("Mach Number");
ylabel("Cp");
plot2d(M,Cpcr,2);
plot2d(M,Cpmin);
disp("The intersection point of both the graphs i.e approx 0.74 is the critical Mach no of the NACA-0012 airfoil.")
