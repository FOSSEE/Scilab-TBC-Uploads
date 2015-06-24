//electron velocity,transit angle and beam coupling coefficent
//given
Va=900// in volts
Rb=30d+3//in ohm
Ib=20d-3//in ampere
f=3.2d+9//in hertz
d=1d-3//meter
Ve=0.593d+6*sqrt(Va)//m/s
w=2*%pi*f
Qt=w*d/Ve//radians
Bc=(sin(Qt/2))/(Qt/2)
Qt=round(Qt*100)/100///rounding off decimals
Bc=round(Bc*1000)/1000///rounding off decimals
disp(Bc,Qt,Ve,'THE electron eloccity ,transit angle and beam coupling coefficient in m/s,radians')//m/s,radians.
