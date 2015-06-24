d=500
p=2
t=20
//hoop stress
sigmat1=(p*d)/(2*t)
disp(sigmat1,"Hoop stress in MPa=")
sigmat2=(p*d)/(4*t)
disp(sigmat2,"Longitudinal stress in MPa=")
tau=(sigmat1-sigmat2)/2
disp(tau,"Maximum stress=")