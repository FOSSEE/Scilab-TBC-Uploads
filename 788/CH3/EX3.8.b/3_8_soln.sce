clc;
pathname=get_absolute_file_path('3_8_soln.sce')
filename=pathname+filesep()+'3_8_data.sci'
exec(filename)

// Solution:
// The required piston area,
A=round(F_load/p); //in^2
// The necessary pump flow rate,
Q=((A/144)*S)/t; //ft^3/s
Q_gpm=Q*449; //gpm
// The Hydraulic Horsepower delivered to cylinder,
HHP=(p*Q_gpm)/1714; //HP
// rounding off the above answer
HHP=fix(HHP)+(fix(floor((HHP-fix(HHP))*10))/10); //HP
// The output horsepower delivered by cylinder to load,
OHP=HHP*eta; //HP

// Results:
printf("\n  Results:  ")   
printf("\n The Required piston area is %.0f in^2.",A)
printf("\n The necessary pump flow rate is %.1f gpm.",Q_gpm)
printf("\n The Hydraulic Horsepower delivered to cylinder is %.1f HP.",HHP)
printf("\n The output horsepower delivered by cylinder to load is %.1f HP.",OHP)

