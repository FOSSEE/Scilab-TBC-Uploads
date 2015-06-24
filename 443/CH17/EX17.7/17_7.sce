pathname=get_absolute_file_path('17_7.sce')
filename=pathname+filesep()+'17_7_data.sci'
exec(filename)
//Brake mean effecive pressure(D and L remain same as previous problem)
pbm=(P*60000)/(0.25*%pi*D^2*L*N*0.5)*10^-5
//Torque developed by the engine
T=(P*60000)/(2*%pi*N)
printf("\n\nRESULTS\n\n")
printf("\nBrake mean effective pressure:%f\n",pbm)
printf("\nTorque developed by the engine:%f\n",T)