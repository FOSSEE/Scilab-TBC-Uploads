pathname=get_absolute_file_path('1_02.sce')
filename=pathname+filesep()+'1_02data.sci'
exec(filename)
printf("\nbending moment due to direct loading in a vertical plane: %f N/mm^2",Load*t);
Sx1= Load/(%pi*(d^2)/4);//σx (axial load)
printf("\nσx (axial load) is: %f N/mm^2",Sx1);
I= %pi*(d^4)/64;// moment of Inertia
Sx2= t*Load*(d/2)*(1/I);//σx (bending moment)
printf("\nσx (bending moment) is: %f N/mm^2",Sx2)
Sx=Sx1+Sx2;//σx 
J= %pi*(d^4)/32;//torsion constant
Txy=T*(d/2)*(1/J);//τxy
printf("\nSince the element is positioned at the bottom of the beam\nτxy:%fN/mm^2",-Txy);
printf("\nσx: %f N/mm^2",-Sx);
Sn=(-Sx)*(cos(theta))^2 +(-Txy)*sin(2*theta);//σn
T= (-Sx-0)*sin(2*theta)/2 -(-Txy)*cos(2*theta);//τ
printf("\nσn: %f N/mm^2",Sn);
printf("\n τ: %f N/mm^2)",T);