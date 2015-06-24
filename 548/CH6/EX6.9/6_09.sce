pathname=get_absolute_file_path('6_09.sce')
filename=pathname+filesep()+'6_09data.sci'
exec(filename)
V1=sqrt(2*Wl*cos(a)/(D1*Cl));disp(V1,"V1=","V1=sqrt(2*Wl*cos(a)/(D1*Cl))","For altitude 3048 meter:")
V2=sqrt(2*Wl*cos(a)/(D2*Cl));disp(V2,"V2=","V2=sqrt(2*Wl*cos(a)/(D2*Cl))","For altitude 609.6 meter:")
printf("\Answer:\n")
printf("\Velocity at equilibrium glide angle at 3048 m: %f m/s\n",V1)
printf("\n\Velocity at equilibrium glide angle at 609.6 m: %f m/s\n\n",V2)