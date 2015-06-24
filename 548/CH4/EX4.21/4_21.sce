pathname=get_absolute_file_path('4_21.sce')
filename=pathname+filesep()+'4_21data.sci'
exec(filename)
Pstag=Pe*[(y+1)^2*Me^2/((4*y*Me^2)-2*(y-1))]^(y/(y-1))*(1-y+2*y*Me^2)/(y+1)
disp(Pstag,"Pstag=","Pstag=Pe*[(y+1)*Me^2/((4*y*Me^2)-2*(y-1))]^(y/(y-1))*(1-y+2*y*Me^2)/(y+1)","the stagnation presure is given by Pstag")
Dstag=Pstag/(R*Tstag);
disp(Dstag,"Dstag=","Dstag=Pstag/(R*Tstag)","the stagnation density is given by Dstag")
printf("\Answer:\n")
printf("\n\ Stagnation temperature: %f K\n\n",Tstag)
printf("\n\ Stagnation pressure: %f N/m^2\n\n",Pstag)
printf("\n\ Stagnation density: %f Kg/m^3\n\n",Dstag)

