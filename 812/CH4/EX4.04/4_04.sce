//Horizontal force//
pathname=get_absolute_file_path('4.04.sce')
filename=pathname+filesep()+'4.04-data.sci'
exec(filename)
//1) Control Volume selected so that area of left surface is equal to the area of the right surface
u1=15;
//Force of support on control volum(in kN):
function y=f(A),y=-u1*d*V,endfunction
Rx1=intg(0,0.01,f)
//Horizontal force on support(in kN):
Kx=-Rx1
//2) Control volumes are selected do that the area of the left and right surfaces are equial to the area of the plate

function z=g(A),z=-u1*d*V,endfunction
Fsx=intg(0,0.01,g)
//Net force on plate:Fx=0=-Bx-pa*Ap+Rx
//                   Rx=pa*Ap+Bx
//From the above, it is obtained that: 
Rx2=-2.25
//Horizontal force on support(in kN):
Kx2=-Rx2
printf("\n\nRESULTS\n\n")
printf("\n\nHorizontal force on support: %.3f kN\n\n",Kx/1000)
   
