clc
//Example 26.7
//Diameter of rimmed flywheel

//------------------------------------------------------------------------------

//Given data
P=125000
N=200
Mt=(125000*60)/(2*%pi*200)
Ecycle=Mt*4*%pi
Estroke=1.5*Ecycle

rho=7200
St=4* 10^6

res7=mopen(TMPDIR+'7_diameter_of_rimmed_flywheel.txt','wt')

mfprintf(res7,'(a)Average torque Mt=%0.2f Nm\n\n',Mt)

mfprintf(res7,'(b)Energy output per cycle=%0.2f Nm\n',Ecycle)
mfprintf(res7,'Energy output during power stroke=%0.2f Nm\n',Estroke)
mfprintf(res7,'Energy stored in the flywheel=%0.2f Nm\n\n',Estroke-Mt)

mfprintf(res7,'(c)Stress=rho*V^2\n')
V=sqrt(St/rho)
mfprintf(res7,'\tV=%0.2f m/s\n',V)
r=(V*60)/(2*%pi*N)
mfprintf(res7,'\tV=r*w\n\tr=V/w=%0.3f m\n\n',r)

mfprintf(res7,'(d)Mass of rim of flywheel:\n')
K=0.9
E=Estroke-Mt
delta=0.03
mr=(K*E)/(V^2 *delta)
mfprintf(res7,'\tmr=(K*E)/(V^2 *delta) =%0.2f kg\n\n',mr)

mfprintf(res7,'(e)Dimensions of rim\n\tmr=pi*Dm*t*b*rho\n')
Dm=2*r
t=sqrt(mr/(%pi*Dm*rho))
mfprintf(res7,'For square rim, t=b=%0.3f m\n\n',t)
t=sqrt(mr/(%pi*Dm*rho*2))
mfprintf(res7,'For rectangular rim, b=2t=%0.3f m and t=%0.3f m\n\n',2*t,t)



mclose(res7)
editor(TMPDIR+'7_diameter_of_rimmed_flywheel.txt')
//------------------------------------------------------------------------------
//-----------------------------End of program-----------------------------------
