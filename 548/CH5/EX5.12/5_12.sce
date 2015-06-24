pathname=get_absolute_file_path('5_12.sce')
filename=pathname+filesep()+'5_12_data.sci'
exec(filename)
a=L*(M^2-1)^0.5/(4*q*S);
disp(a,"a=","a=L*(M^2-1)^0.5/(4*q*S)","angle of attack at sea level:")
a1=L*(M^2-1)^0.5/(4*q1*S);
disp(a1,"a1=","a1=L*(M^2-1)^0.5/(4*q1*S)","angle of attack at 10 Km:")
printf("\Answer:\n")
printf("\n\angle of attack at sea level: %f degree\n\n",a*180/%pi)
printf("\n\angle of attack at 10 Km: %f degree\n\n",a1*180/%pi)