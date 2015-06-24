clc
Vfb=-1.0
disp("Vfb = "+string(Vfb)+" V") //initializing value of flat band voltage.
Vms=-0.9
disp("Vms = "+string(Vms)+"V") //initializing value of metal semiconductor work function difference.
tox=200*10^-8
disp("tox = "+string(tox)+" cm") //initializing value of gate oxide thickness.
et=3.9
disp("et = "+string(et)) //initializing value of relative permittivity.
eo=8.85*10^-14
disp("eo = "+string(eo)+"F/cm") //initializing value of free space permittivity.
e=1.6*10^-19
disp("e = "+string(e)+" columns") //initializing value of charge of electrons.
eox=(eo*et)
disp("eox=(eo*et))="+string(eox)+" F/cm^2")//calculation
Cox=(eox/tox)
disp("Oxide capacitance,Cox=(eox/tox))="+string(Cox)+" F/cm^2")//calculation
Qss=((Vms-Vfb)*Cox)
disp("charge density on semiconductor surface,Qss=((Vms-Vfb)*Cox))="+string(Qss)+" C/cm^2")//calculation
Qss1=Qss/e
disp("charge density on semiconductor surface (in terms of number of charges) ,Qss*=Qss/e)="+string(Qss1)+" electrons/cm^2")//calculation
