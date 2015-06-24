pathname=get_absolute_file_path('4_19.sce')
filename=pathname+filesep()+'4_19data.sci'
exec(filename)
Ma=[[(Po/Pa)^((y-1)/y)-1]*2/(y-1)]^0.5;disp(Ma,"Ma=","Ma=[(Po/Pa)^((y-1)/y)-1]*2/(y-1)","Mach no at point A")
Ta=Toa/[1+(y-1)*Ma^2/2];
disp(Ta,"Ta=","Ta=Toa/[1+(y-1)*Ma^2/2]","static temperature at A")
Va=sqrt(y*R*Ta)*Ma;
disp(Va,"Va=","velocity at A =a*Ma,where a(sqrt(y*R*Ta)) is apeed of sound at A")
printf("\Answer:\n")
printf("\n\Mach No at A: %f \n\n",Ma)
printf("\n\velocity at A: %f m/s\n\n",Va)
