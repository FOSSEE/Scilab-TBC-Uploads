//Scale//
pathname=get_absolute_file_path('4.05.sce')
filename=pathname+filesep()+'4.05-data.sci'
exec(filename)
//Weight of water in the tank(in lbf):
d1=62.4;
WH2O=d1*A*h
v=-5;
//Total body force in negative y direction(lbf):
function y=f(A),y=-v*d2*V1,endfunction
F=intg(0,A1,f)
//Force of scale on control volume(in kN):
Ry=W+WH2O-F
printf("\n\nRESULTS\n\n")
printf("\n\nScale Reading: %.3f lbf\n\n",Ry)
  
