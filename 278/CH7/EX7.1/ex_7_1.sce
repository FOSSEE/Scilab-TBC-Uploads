d=1200
p=1.75
sigmat2=28
sigmat1=42
//when longitudinal stress does not exceed 28Mpa
t2=(p*d)/(4*sigmat2)
disp(t,"Minimum wall thickness in mm=")
//when circumferential stress does not exceed 42MPa
t1=(p*d)/(2*sigmat1)
disp(t,"Minimum wall thickness in mm=")