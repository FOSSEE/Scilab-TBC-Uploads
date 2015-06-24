
//refer Fig. 21.19 in the textbook 
AT=15D+3//PE represents the armature reaction ampere turns
mprintf("Armature reaction ampere turns=%d\n", AT)
Pout=15D+6//output of the alternator
Vl=10.2D+3//line voltage
Il=Pout/(sqrt(3)*Vl)
Iph=Il 
Ia=Il
//line DE represents the leakage reactance drop in terms of line values
Es=1.3D+3
Eph=Es/sqrt(3)
Xl=Eph/Ia
mprintf("Leakage reactance per phase, Xl=%f ohm\n", Xl)
//calculating regulation for full load at .8 pf lagging
Rt=.53//resistance of the stator winding between terminals
Ra=Rt/2//resistance per phase
Rd1=Ia*Ra//resistance drop in terms of phase value
Rd2=sqrt(3)*Rd1//resistance drop in terms of line value
//refer Fig.21.20(a) in the textbook
Ifg=21.67D+3
Ifs=1.67D+3
Ifsc=18D+3
//refer Fig.21.20(b) in the textbook
Ifl=40.67D+3//total field ampere turns
Ef=12.85D+3//no load voltage
Vt=10.2D+3//full load rated voltage
VR=(Ef-Vt)/Vt*100
mprintf("Regulation at full load, 0.8 pf lagging=%d percent", round(VR))
