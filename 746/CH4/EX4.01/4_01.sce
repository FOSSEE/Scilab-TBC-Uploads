//Velocity//
pathname=get_absolute_file_path('4.01.sce')
filename=pathname+filesep()+'4.01-data.sci'
exec(filename)
//If I=integral of(pV.dA):
//For system: Ics=IA1+IA2+IA3+IA4.
//For area 1
IA1=-d*V1*A1
//For area 3: IA2=d*V3*A3=m3
IA3=m3
//For area 4: IA4=-d*V4*A4=-d*Q4
IA4=-d*Q4
//For area 2:
IA2=-IA1-IA3-IA4
//Velocity at section 2(in ft/sec):
V2=IA2/d/A2
//V2 is in the negative y direction
printf("\n\nRESULTS\n\n")
printf("\n\nVelocity at section 2: -%.0fj ft/sec\n\n",V2)
