pathname=get_absolute_file_path('9_01.sce')
filename=pathname+filesep()+'9_01data.sci'
exec(filename)
x=poly(0,'x');
P=x-10*x+9.5;
t=roots(P);
V2=%pi*b^2*(Stroke+t)*(10^-6)/4;disp(V2,"V2=%pi*b^2*(Stroke+t)/4");
V3=V2/r;disp(V3,"V3=V2/r");
V5=V2;V4=V3;
Wcomp=(P2*V2-P3*V3)/(1-y);
disp(Wcomp,"Wcomp=","Wcomp=P2*V2-P3*V3/(1-y);","work done in compression cycle Wcomp:")
Wpower=(P5*V5-P4*V4)/(1-y);
disp(Wpower,"Wpower=","Wpower=P5*V5-P4*V4/(1-y);","work done in power stroke Wpower:")
Pa=6*n*nm*(rpm)*(Wpower-Wcomp)/120;
disp(Pa,"Pa=n*nm*(rpm)*(Wpower-Wcomp)/120","power available Pa:")
printf("\Answer:\n")
printf("\n\Power available from the engine propeller combination: %f J/s \n\n",Pa)
