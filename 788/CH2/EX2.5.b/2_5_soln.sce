clc;
pathname=get_absolute_file_path('2_5_soln.sce')
filename=pathname+filesep()+'2_5_data.sci'
exec(filename)

// Solution:
// specific Weight of water,
gamma1=0.0361; //lb/in^3 
// Conversion: 
// 1 feet = 12 inches
// 1 lb/in^2 = 1 psi            
// we know pressure,
// p=(specific weight of liquid * liquid column height)
p=(gamma1*H*12); //psi

// Results:
printf("\n  Results:  ")
printf("\n The pressure on skin diver is %.1f psi.",p)
