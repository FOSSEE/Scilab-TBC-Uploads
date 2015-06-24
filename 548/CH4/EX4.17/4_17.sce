pathname=get_absolute_file_path('4_17.sce')
filename=pathname+filesep()+'4_17data.sci'
exec(filename)
disp("M1^2=2*[(Po/P1)^((y-1)/y)-1]/(y-1))","let Mach no at which the airplane flying is M1 then")
M1=sqrt(2*[(Po/P1)^((y-1)/y)-1]/(y-1));disp(M1,"M1=");
a1=sqrt(y*R*T);disp(a1,"a1=(y*R*T)^0.5","speed of sound at that point");
V1=sqrt(2*a1^2*[(Po/P1)^((y-1)/y)-1]/(y-1));
disp(V1,"V1=","V1^2=2*a1^2*[(Po/P1)^((y-1)/y)-1]/(y-1)","equvalent air speed V1")
R=((y-1)/y);
Vc=sqrt([2*a^2*[(((Po-P1)/P)+1)^((y-1)/y)-1]/(y-1)]);
disp(Vc,"Vc=","Vc^2=2*a^2*[((Po-P1)/P)+1)^((y-1)/y)-1]/(y-1)","caliberated air speed Vc")
printf("\Answer:\n")
printf("\n\mach no at which airplane is flying: %f \n\n",M1)
printf("\n\True airspeed of the airplane: %f m/s\n\n",V1)
printf("\n\caliberated airspeed of the airplane: %f m/s\n\n",Vc)
