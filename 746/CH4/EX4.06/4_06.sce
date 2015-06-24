//force exerted per unt//
pathname=get_absolute_file_path('4.06.sce')
filename=pathname+filesep()+'4.06-data.sci'
exec(filename)
//X-component of reaction force per unit width of the gate(in N/m):
Rxw=(d*(V2^2*D2-V1^2*D1))-(d*g/2*(D1^2-D2^2))
//Horizontal force exerted per unt width on the gate(in N/m):
Kxw=-Rxw
printf("\n\nRESULTS\n\n")
printf("\n\nHorizontal force exerted per unt width on the gate: %.3f kN/m\n\n",Kxw/1000)
