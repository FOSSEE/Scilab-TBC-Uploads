clc
Nd=10^16
disp("Nd = "+string(Nd)+" /cm^3") //initializing value of donor ion  concentration.
Vms=-1.12
disp("Vms = "+string(Vms)+" V") //initializing value of metal semiconductor work function difference.
Er=3.9
disp("Er = "+string(Er)) //initializing value of relative dielectric permittivity constant .
Eo=8.854*10^-14
disp("Eo = "+string(Eo)+" F/cm") //initializing value of permittivity of free space.
tox=200*10^-8
disp("tox = "+string(tox)+" cm") //initializing value of thickness of p-type substrate.
Qss=2.5*10^-8
disp("Qss = "+string(Qss)+" columbs/cm^2") //initializing value of charge density on semiconductor surface.
Eox=Eo*Er
disp("Total permittivity,Eox=Eo*Er="+string(Eox)+" F/cm")//calculation
Co=(Eox/tox)
disp("Capacitance per unit area,Co=(E/tox))="+string(Co)+" F/cm^2")//calculation
Vfb=(Vms-(Qss/Co))
disp("Flat band voltage,Vfb=(Vms-(Qss/Co)))="+string(Vfb)+" V")//calculation

//the answer for Co after calculation is provided wrong in the book.
