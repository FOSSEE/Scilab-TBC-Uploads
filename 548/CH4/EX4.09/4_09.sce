pathname=get_absolute_file_path('4_09.sce')
filename=pathname+filesep()+'4_09data.sci'
exec(filename)
disp("So V1^2=2Cp*(To-T1)","CpTo=CpT1+(V1^2)/2","From energy equation:","let V1 be the velocity of throat")
V1=(2*Cp*(To-T1))^0.5;
printf("\n\Velocity at throat: %f m/s\n\n",V1)
disp("So Ve^2=2Cp*(To-Te)","CpTo=CpTe+(Ve^2)/2","From energy equation:","let Ve be the velocity of exit")
Ve=(2*Cp*(To-Te))^0.5;
printf("\n\Velocity at the exit: %f m/s\n\n",Ve)
disp("A1=Mt/(D1*V1)","Area of throat")
A1=Mt/(D1*V1);
printf("\n\Area of throat: %f m^2\n\n",A1)
disp("Ae=Mt/(De*Ve)","Area of the exit")
Ae=Mt/(De*Ve);
printf("\n\Area of the exit: %f m^2\n\n",Ae)



