clc;
pathname=get_absolute_file_path('2_15_soln.sce')
filename=pathname+filesep()+'2_15_data.sci'
exec(filename)

// Solution:
// specific Weight of water,
gamma1=9800; //N/m^3        
// we know pressure,
// p=(specific weight of liquid * liquid column height)
p=(gamma1*H); //Pa
pK=p/1000; //kPa

// Results:
printf("\n  Results:  ")
printf("\n The pressure on skin diver is %.0f kPa.",pK)
