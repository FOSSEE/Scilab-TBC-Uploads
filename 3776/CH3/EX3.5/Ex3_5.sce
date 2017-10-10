clear
//Given
p_in = 0.7   //MPa - internal pressure 
n_bolts = 20 // number of bolts 
dia = 650    //mm - bolt circle diameter 
stress_allow = 125 //mm Maximum alowable stress
Stress_conc = 2    //stress concentration
d = 25             //mm 
//caliculations

F = p_in*3.14*(((dia-2*d)/2)**2)*(10**6) //N
F_each = F/n_bolts //N- force per each Bolt
A = Stress_conc*F_each/(stress_allow*(10**6)) //mm2 The bolt area 
Bolt_dia = 2*((A/3.14)**0.5) //mm the bolt daimeter
printf("\n The diameter of each bolt is %0.1f mm",Bolt_dia)
