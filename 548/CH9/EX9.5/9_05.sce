pathname=get_absolute_file_path('9_05.sce')
filename=pathname+filesep()+'9_05data.sci'
exec(filename)
printf("\n\burnout velocity of single stage rocket : %f m/s\n\n",Vb)
printf("\n\burnout velocity of double stage rocket after second stage: %f m/s\n\n",Vb2)
disp("As we can see from final burnout velocities that a double-stage rocket can give a greater launching velocity as compared to single stage rocket." )