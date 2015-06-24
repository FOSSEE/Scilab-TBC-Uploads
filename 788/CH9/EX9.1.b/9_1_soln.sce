clc;
pathname=get_absolute_file_path('9_1_soln.sce')
filename=pathname+filesep()+'9_1_data.sci'
exec(filename)

// Solution:
// cylinder speed during extending stroke,
vp_ext=(Qp*231)/(Ar*60); //in/s
// load carrying capacity during extending stroke,
Fload_ext=p*Ar; //lb
// power delivered to load during extending stroke,
Power_ext=(Fload_ext*vp_ext)/(550*12); //HP
// cylinder speed during retracting stroke,
vp_ret=(Qp*231)/((Ap-Ar)*60); //in/s
// load carrying capacity during retracting stroke,
Fload_ret=p*(Ap-Ar); //lb
// power delivered to load during retracting stroke,
Power_ret=(Fload_ext*vp_ext)/(550*12); //HP

// Results:
printf("\n  Results:  ")   
printf("\n The cylinder speed during extending stroke is %.1f in/s.",vp_ext)
printf("\n The load carrying capacity during extending stroke is %.0f lb.",Fload_ext)
printf("\n The power delivered to load during extending stroke is %.1f HP.",Power_ext)
printf("\n The cylinder speed during retracting stroke is %.2f in/s.",vp_ret)
printf("\n The load carrying capacity during retracting stroke is %.0f lb.",Fload_ret)
printf("\n The power delivered to load during retracting stroke is %.1f HP.",Power_ret)


