//volume and power//
pathname=get_absolute_file_path('10.02.sce')
filename=pathname+filesep()+'10.02-data.sci'
exec(filename)
U=0.5*(Dh+Dt)/2*1200*2*%pi/60
k=tand(alpha1)+cotd(betta1)
Vn1=U/k
V1=Vn1/cosd(alpha1)
Vt1=V1*sind(alpha1)
Vrb1=Vn1/sind(betta1)
//Volume flow rate (in m^3/sec):
Q=%pi/4*Vn1*(Dt^2-Dh^2)
k=(U-Vn1*cotd(betta2))/Vn1
alpha2= atand(k)
V2=Vn1/cosd(alpha2)
Vt2=V2*sind(alpha2)
//Rotor Torque (in N-m):
Tz=p*Q*(Dh+Dt)/4*(Vt2-Vt1)
//Power required (in W):
Wm=w*2*%pi/60*Tz
printf("\n\nRESULTS\n\n")
printf("\n\nVolume flow rate: %.3f m^3/sec\n\n",Q)
printf("\n\nRotor Torque: %.3f N-m\n\n",Tz)
printf("\n\nPower required: %.3f W\n\n",Wm)
