clc;
pathname=get_absolute_file_path('13_9_soln.sce')
filename=pathname+filesep()+'13_9_data.sci'
exec(filename)

// Solution:
// from fig 13-29,
// entering moistue content at 80 deg F,
moist_in=1.58/1000; //lb/ft^3
// moisture rate which enters the compressor,
moist_rate=moist_in*Qc; //lb/min
// number of gallons/day received by pneumatic system,
gal_per_day=(moist_rate*60*t)/8.34; //gal/day
// moisture received by pneumatic system if aftercooler is installed,
// from fig 13-29,
moist_after=(1-((1.58-0.2)/1.58))*gal_per_day; //gal/day
// moisture received by pneumatic system if air dryer is installed,
// from fig 13-29,
moist_air_dryer=(1-((1.58-0.05)/1.58))*gal_per_day; //gal/day

// Results:
printf("\n  Results:  ")   
printf("\n The number of gallons/day received by pneumatic system is %.2f gal/day.",gal_per_day)
printf("\n The moisture received by pneumatic system if aftercooler is installed is %.2f gal/day.",moist_after)
printf("\n The moisture received by pneumatic system if air dryer is installed is %.2f gal/day.",moist_air_dryer)
