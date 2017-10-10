clc
//Example 18.2
//Power transmission by spur gear

phi=20
m=8
b=90
N=600

Np=16
So_p=83e6
y_p=0.094
G=4
strength_p=So_p*y_p

Ng=Np*G
So_g=103e6
y_g=0.135
strength_g=So_g*y_g

if strength_p < strength_g
    printf('Pinion is weaker\n\n')
else
    printf('Gear is weaker\n\n')
end

V=((2*%pi*N)/60)*((Np*m)/(2*1000))
printf('Pitch line velocity is %0.3f m/s\n\n',V)

S_allowable = So_p* (3/(3+V))
printf('Allowable stress is %0.2f MN/m^2\n\n',S_allowable*1e-6)

F=(S_allowable*b*1e-3*y_p*m*%pi)/1e6
printf('Force that can be transmitted is %0.3f kN\n\n',F)

P=F*V
printf('Power that can be transmitted is %0.3f kW\n\n',P)

//End of programme