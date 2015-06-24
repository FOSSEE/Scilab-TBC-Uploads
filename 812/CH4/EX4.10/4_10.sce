//Net force//
pathname=get_absolute_file_path('4.10.sce')
filename=pathname+filesep()+'4.10-data.sci'
exec(filename)
u1=V-U
u2=(V-U)*cosd(theta)
v2=(V-U)*sind(theta)
V1=V-U
V2=V1
//X component of moment equation(in N):
function y=f(A),y=u1*-(d*V1),endfunction
function z=g(A),z=u2*d*V2,endfunction
Rx=intg(0,A,f)+intg(0,A,g)

//Y component of moment equation(in N):
function a=h(A),a=v2*d*V1,endfunction
Ry=intg(0,A,h) //This is after neglecting weight of vane and the water.
printf("\n\nRESULTS\n\n")
printf("\n\nNet force on the vane: %.3f i+%.2f j kN\n\n",Rx/1000,Ry/1000)
