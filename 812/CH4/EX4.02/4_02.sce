//Mass flow//
pathname=get_absolute_file_path('4.02.sce')
filename=pathname+filesep()+'4.02-data.sci'
exec(filename)
//If I=integral of(pV.dA):
//For system: ICS=Iab+Ibc+Icd+Ida
//But ICS=0

//For Aab:
function p=f(y),p=-d*U*w*y^0,endfunction
IAab=intg(0,t,f)

//For Acd:
function q=g(y),q=d*U*w*(2*y/t-(y/t)^2),endfunction
IAcd=intg(0,t,g)

//Mass flow rate across surface bc(in kg/sec):
mbc=(-IAab-IAcd)/1000
printf("\n\nRESULTS\n\n")
printf("\n\nMass flow rate across surface bc: %.4f kg/sec\n\n",mbc)
