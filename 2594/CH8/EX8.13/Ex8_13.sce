clc
Na=2*10^17
disp("Na = "+string(Na)+" /cm^3") //initializing value of acceptor ion  concentration.
Er=11.9
disp("Er = "+string(Er)) //initializing value of relative dielectric permittivity constant .
Eo=8.854*10^-14
disp("Eo = "+string(Eo)+" F/cm") //initializing value of permittivity of free space.
ni=1.5*10^10
disp("ni = "+string(ni)+"cm^-3") //initializing value of intrinsic concentration of electrons.
e=1.6*10^-19
disp("e = "+string(e)+" columns") //initializing value of charge of electrons.
tox=400*10^-8
disp("tox = "+string(tox)+" cm") //initializing value of thickness of p-type substrate.
Vt=0.0259
disp("Vt = "+string(Vt)+" eV") //initializing value of thermal voltage.
er=3.9
disp("er = "+string(er)) //initializing value of relative dielectric permittivity constant 
Vfp=Vt*(log(Na/(ni)))
disp("Potential,Vfp=Vt*(log(Na/(ni))))="+string(Vfp)+" V")//calculation
Wd=sqrt((4*Er*Eo*Vfp)/(e*Na))
disp("Depletion width,Wd=sqrt((4*Er*Eo*Vs)/(e*Nd)))="+string(Wd)+" cm")//calculation
CTmin=(er*Eo/(((er/Er)*(Wd))+(tox)))
disp("Minimum Capacitance,CTmin=(er*Eo/((er/Er)*(Wd)+(tox)))="+string(CTmin)+" F/cm^2")//calculation
CFB=((er*Eo)/((((er/Er)*sqrt(Vt*Er*Eo/(e*Na))))+(tox)))
disp("Flat band capacitance,CFB=((er*Eo)/(((er/Er)*sqrt(Vt*Er*Eo/(e*Na))))+(tox))="+string(CFB)+" F/cm^2")//calculation

//the value of Na (acceptor ion  concentration) and tox (thickness of p-type substrate) is provided different in the question than used in the solution.
//I have used the value provided in the solution.(i.e Na=2*10^17 and tox=400*10^8cm) 
