//Velocity of rocket//
pathname=get_absolute_file_path('4.12.sce')
filename=pathname+filesep()+'4.12-data.sci'
exec(filename)
//Acceleration of rocket at t=0(in m/sec^2):
Ve*me/M0-g
//Velocity of rocket at t=10 (in m/sec):
function y=f(t),y=Ve*me/(M0-me*t)-g,endfunction
Vcv=intg(0,t,f)
printf("\n\nRESULTS\n\n")
printf("\n\nVelocity of rocket at t=10: %.1f m/sec\n\n",Vcv)
