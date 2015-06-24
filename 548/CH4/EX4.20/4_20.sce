pathname=get_absolute_file_path('4_20.sce')
filename=pathname+filesep()+'4_20data.sci'
exec(filename)
To=Te*A
disp(To,"To=","To=Te*(1+(y-1)*Me^2/2)","let reservoir temperature required is To ")
Po=Pe*A^(y/(y-1));
disp(Po,"Po=","Po=Pe*((1+(y-1)*Me^2/2))^y/y-1","let reservoir pressure required is Po ")
r=sqrt((2*A/(y+1))^((y+1)/(y-1))/Me^2)
disp(r,"Ae/At=","Ae/At=sqrt((2*(1+(y-1)*Me^2/2)/(y+1))^((y+1)/(y-1))/Me^2","Area ratio required is equal to")
printf("\Answer:\n")
printf("\n\ required reservoir temperature: %f K\n\n",To)
printf("\n\ required reservoir pressure: %f N/m^2\n\n",Po)
printf("\n\ required Area Ratio: %f \n\n",r)


