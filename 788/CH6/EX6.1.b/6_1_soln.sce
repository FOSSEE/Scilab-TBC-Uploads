clc;
pathname=get_absolute_file_path('6_1_soln.sce')
filename=pathname+filesep()+'6_1_data.sci'
exec(filename)

// Solution:
// Area of blank end of piston,
Ap=(%pi/4)*(D^2); //in^2
// Area of rod end of piston,
Ar=(%pi/4)*(d^2); //in^2
// hydraulic pressure during the extending stroke,
p_ext=F_ext/Ap; //psi
// piston velocity during the extending stroke,
v_ext=(Q_in/449)/(Ap/144); //ft/s
// rounding off the above answer
v_ext=fix(v_ext)+(fix(ceil((v_ext-fix(v_ext))*100))/100); //ft/s
// cylinder horsepower during the extending stroke,
HP_ext=(v_ext*F_ext)/550; //HP
// rounding off the above answer
HP_ext=fix(HP_ext)+(fix(floor((HP_ext-fix(HP_ext))*100))/100); //HP
// hydraulic pressure during the retraction stroke,
p_ret=ceil(F_ret/(Ap-Ar)); //psi
// piston velocity during the retraction stroke,
v_ret=(Q_in/449)/((Ap-Ar)/144); //ft/s;
// rounding off the above answer
v_ret=fix(v_ret)+(fix(ceil((v_ret-fix(v_ret))*100))/100); //ft/s
// cylinder horsepower during the retraction stroke,
HP_ret=(v_ret*F_ret)/550; //HP

// Results:
printf("\n  Results:  ")   
printf("\n The hydraulic pressure during the extending stroke is %.0f psi.",p_ext)
printf("\n The piston velocity during the extending stroke is %.2f ft/s.",v_ext)
printf("\n The cylinder horsepower during the extending stroke is %.2f HP.",HP_ext)
printf("\n The hydraulic pressure during the retraction stroke is %.0f psi.",p_ret)
printf("\n The piston velocity during the retraction stroke is %.2f ft/s.",v_ret)
printf("\n The cylinder horsepower during the retraction stroke is %.2f HP.",HP_ret)



