pathname=get_absolute_file_path('9_1.sce')
filename=pathname+filesep()+'9_1data.sci'
exec(filename)
alpha= atan(((1+ t*d/(2*Af))/(1+ t*b/As))^0.25);//α
Ft=(W*z/d)+(W/(2*tan(alpha)));//FT
printf("\nFT: %f N",Ft);
Mmax= (W*tan(alpha)*b^2)/(12*d); 
Smax= (Mmax/ESM)+(Ft/Af);//σ max
printf("\nMaximum Stress in Flange: %f N/mm^2",Smax);
P=(W*b*tan(alpha))/d;
if(b<1.5*d) then//le
    Le=d/((4-(2*b/d))^0.5);
else
    Le=d;
end
Pcr= ((%pi^2)*E*I)/(Le^2);
printf("\nPcr: %f KN",Pcr);
printf("\nP: %f KN",P);
if(P<Pcr) then
    printf("\nstiffener will not buckle")
else
    printf("\nstiffener will buckle")
end


