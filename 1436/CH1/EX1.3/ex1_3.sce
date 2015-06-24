// Example 1.3, page no-54
clear
clc
resi_per_leg=5
temp_coeff=0.385
R_due_to_leadwires=2*resi_per_leg
err=R_due_to_leadwires/temp_coeff
err=ceil(err)
printf("(a)\nThe contribution of 10 ohms lead wire resistance \nto the measurement error = %d°C",err)
temp_obj=200
temp_measured=temp_obj+err
per_of_err=((temp_measured-temp_obj)/temp_obj)*100
printf("\n(b)\nPercentage of Error = %d%%",per_of_err)
