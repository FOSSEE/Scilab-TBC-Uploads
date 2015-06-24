clc;
pathname=get_absolute_file_path('2_6_soln.sce')
filename=pathname+filesep()+'2_6_data.sci'
exec(filename)

// Solution:
// specific Weight of water,
gamma1=0.0361; //lb/in^3 
// We also knows Atmospheric Pressure,
p=14.7; //psi
// Conversion: 
// 1 feet = 12 inches
// 1 lb/in^2 = 1 psi            
// we know pressure,
// p=(specific weight of liquid * liquid column height)
// Therefore,
H=(p/gamma1); //in
// He=Height in Feet.
He=H*0.083; //ft

// Results:
printf("\n  Results:  ")
printf("\n The Height of water column is %0.0f ft.",He)
