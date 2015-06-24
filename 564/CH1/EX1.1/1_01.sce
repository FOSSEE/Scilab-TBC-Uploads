pathname=get_absolute_file_path('1_01.sce')
filename=pathname+filesep()+'1_01data.sci'
exec(filename)
Sx1= p*d/(4*t);
Sy= p*d/(2*t);//σy
printf("\nLongitudnal stress produced by internal pressure: %f N/mm^2",Sx1);
printf("\nCircumferential stress produced by internal pressure (σy): %f N/mm^2",Sy);
Sx2= Load/(%pi*d*t);
printf("\ndirect stress due to the axial load: %f N/mm^2",Sx2);
Sx= Sx1+Sx2;//σx
printf("\nσx is: %f N/mm^2",Sx);
printf("\nσy is: %f N/mm^2",Sy);
Sn=(Sx)*(cos(theta))^2 + Sy*(sin(theta))^2;//σn
T= (Sx-Sy)*sin(2*(theta)) /2;//τ
printf("\nσn is: %f N/mm^2",Sn);
printf("\nτ is: %f N/mm^2",T);
Tmax= (Sx-Sy)/2;//τ max
printf("\nτmax: %f N/mm^2",Tmax);