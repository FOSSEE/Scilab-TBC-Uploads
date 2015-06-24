clc;
pathname=get_absolute_file_path('2_10_soln.sce')
filename=pathname+filesep()+'2_10_data.sci'
exec(filename)

// Solution:
// We know that,
// T(degF)=((1.8*T(degC))+32)  //Eqn - 2         
// From Eqn 1 and 2
// ((1.8*T(degC))+32)= T(degC)
// (1-1.8)*T(degC)=32
// -0.8*T(degC)=32
TdegC=-32/0.8;

// Results:
printf("\n  Results:  ")
printf("\n The temp at which Fahrenheit and Celsius values are equal is %0.1f deg.",TdegC)
