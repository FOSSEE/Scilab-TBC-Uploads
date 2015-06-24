//force//
pathname=get_absolute_file_path('3.06.sce')
filename=pathname+filesep()+'3.06-data.sci'
exec(filename)
//Force required to keep the door shut(in lbf):
function y=f(z),y=b/L*p0*z+d*b/L*(L*z-z^2),endfunction
Ft=intg(0,L,f)
printf("\n\nRESULTS\n\n")
printf("\n\nForce requiredto kep the door shut: %.1f lbf\n\n",Ft)
