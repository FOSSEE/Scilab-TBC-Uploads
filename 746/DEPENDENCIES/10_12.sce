//Power required//
pathname=get_absolute_file_path('10.12.sce')
filename=pathname+filesep()+'10.12-data.sci'
exec(filename)
//From given graph, for maximum delivery condition, Q=48.5gpm.
//Volume of oil per revolution delivered by the pump(in in^3/rev):
vc=Qe/N*231
//Volumetric Effciency of pump at max flow:
Effv=vc/va
//Operating point of the pump is found to be at 1500 psig,Q=46.5gpm
//Power delivered by the fluid(in hp):
Pf=Qo*po1/7.48/60*144/550
//Input power(in hp):
Pi=Pf/Effp
//The power delivered to the load(in hp):
Pl=Q*(po1)/7.48/60*144/550
//Power dissipated by throttling(in hp):
Pd=Pf-Pl
//The dissipation with the variable displacement pump(in hp):
Pvd=Q*(po2-po1)/7.48/60*144/550
//Power required for te load sensing pump if pump pressure is 100psi above that required by the load(in hp):
Pls=Q*100/7.48/60*144/550
printf("\n\nRESULTS\n\n")
printf("\n\nVolume of oil per revolution delivered by the pump: %.3f in^3/rev\n\n",vc)
printf("\n\nRequired pump power input: %.3f hp\n\n",Pi)
printf("\n\nPower deliverd to the load: %.3f hp\n\n",Pl)
printf("\n\nPower dissipated by throttling: %.3f hp\n\n",Pd)
printf("\n\nThe dissipation with the variable displacement pump: %.3f hp\n\n",Pvd)
printf("\n\nPower required for te load sensing pump if pump pressure is 100psi above that required by the load: %.3f hp\n\n",Pls)
