//Displacement thickness and stress//
pathname=get_absolute_file_path('9.04.sce')
filename=pathname+filesep()+'9.04-data.sci'
exec(filename)
//Reynolds number:
ReL=U*L/v
//FOR TURBULENT FLOW
//Disturbance thickness(in m):
dL1=0.382/ReL^0.2*L
//Displacement thickness(in m):
function y=f(n),y=dL1*(1-n^(1/7))
endfunction
dl1=intg(0,1,f)
//Skin friction coefficient:
Cf1=0.0594/ReL^0.2
//Wall shear stress(in N/m^2):
tw1=Cf1*0.5*d*U^2
//For LAMINAR FLOW:
//Disturbance thickness(in m)
dL2=5/sqrt(ReL)*L
//Displacement thickness(in m):
dl2=0.344*dL2
//Skin friction coefficient:
Cf2=0.664/sqrt(ReL)
//Wall shear stress(in N/m^2):
tw2=Cf2*0.5*d*U^2
//COMPARISON OF VALUES WITH LAMINAR FLOW
//Disturbance thickness
D=dL1/dL2
//Displacement thickness
DS=dl1/dl2
//Wall shear stress
WSS=tw1/tw2
printf("\n\nRESULTS\n\n")
printf("\n\nDisturbace thickness: %.3f m\n\n",dL1)
printf("\n\nDisplacement thickness: %.3f m\n\n",dl1)
printf("\n\nWall shear stress: %f N/m^2\n\n",tw1)
printf("\n\nCOMPARISON WIH LAMINAR FLOW\n\n\n")
printf("\n\n Disturbance thicknes: %.3f \n\n",D)
printf("\n\nDisplacement thickness: %.3f\n\n",DS)
printf("\n\nWall shear stress: %.3f \n\n",WSS)
