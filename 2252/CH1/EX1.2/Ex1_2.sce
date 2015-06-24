
//i1, i2, i3 be the currents in the branches CD, EF and GH respectively
//i1+i2+i3=1.5
i2=(20-1.5*10)/15
i3=(20-1.5*10)/15
i1=1.5-i2-i3
r=(20-1.5*10)/i1
mprintf("r=%f ohm", r)

