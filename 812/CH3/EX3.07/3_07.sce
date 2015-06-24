//force at equilibrium//
pathname=get_absolute_file_path('3.07.sce')
filename=pathname+filesep()+'3.07-data.sci'
exec(filename)
//Horizontal component of resultant force(in kN):
Frh=0.5*d*g*w*D^2
//Line of action of Frh(in m):
y1=0.5*D+w*D^3/12/(0.5*D)/(w*D)
//Vertical component of resultant force(in kN):
function y=q(x), y=d*g*w*(D-sqrt(a*x)),endfunction
Frv=intg(0,D^2/a,q)
//Line of acion of Frv(in m):
function k=f(x), k=d*g*w/Frv*x*(D-sqrt(a*x)),endfunction
xa=intg(0,D^2/a,f)
//Force required to keep the gate in equilibrium(in kN):
Fa=1/l*(xa*Frv+(D-y1)*Frh)
printf("\n\nRESULTS\n\n")
printf("\n\nForce required to keep the gate at equilibrium: %f kN\n\n",Fa/1000)
