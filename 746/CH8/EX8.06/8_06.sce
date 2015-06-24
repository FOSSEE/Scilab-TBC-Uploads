//Maximum and power//
pathname=get_absolute_file_path('8.06.sce')
filename=pathname+filesep()+'8.06-data.sci'
exec(filename)
//Velocity of flow(in ft/sec):
V=Q/24/3600/(%pi/4*(D/12)^2)*42/7.48
//Maximum spacing(in ft):
L=2/f*D/12*(p2-p1)/(SG*d)/V^2*144
//Power needed at each pump(in hp):
Win=1/Effp*V*%pi/4*(D/12)^2*(p2-p1)/550*144
printf("\n\nRESULTS\n\n")
printf("\n\nMaximum spacing: %.3f feet\n\n",L)
printf("\n\nPower needed at each pump: %.3f hp\n\n",Win)
