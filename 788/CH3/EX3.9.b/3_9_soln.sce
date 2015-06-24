clc;
pathname=get_absolute_file_path('3_9_soln.sce')
filename=pathname+filesep()+'3_9_data.sci'
exec(filename)

// Solution:
// The required piston area,
A=(F_load+F_fric)/p; //in^2
// The Theoretical pump flow rate,
Q_theo=((A/144)*S)/t; //ft^3/s
Q_gpm=(Q_theo*449); //gpm
// The Actual pump flow rate,
Q_act=Q_gpm+Q_leak; //gpm
// rounding off the above answer
Q_act=fix(Q_act)+(fix(floor((Q_act-fix(Q_act))*10))/10); //gpm
// The Hydraulic Horsepower delivered to cylinder,
HHP=(p*Q_gpm)/1714; //HP
// rounding off the above answer
HHP=fix(HHP)+(fix(ceil((HHP-fix(HHP))*10))/10); //HP
// The output horsepower delivered by cylinder to load,
OHP=(F_load*(S/t))/550; //HP
// The Efficiency of System,
eta=floor((OHP/HHP)*100); //%

// Results:
printf("\n  Results:  ")   
printf("\n The Required piston area is %.2f in^2.",A)
printf("\n The necessary pump flow rate is %.1f gpm.",Q_act)
printf("\n The Hydraulic Horsepower delivered to cylinder is %.1f HP.",HHP)
printf("\n The output horsepower delivered by cylinder to load is %.1f HP.",OHP)




