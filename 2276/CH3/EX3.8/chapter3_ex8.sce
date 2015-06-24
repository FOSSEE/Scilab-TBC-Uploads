clc
clear

//input
ra=0.05;//armature resistance of a d.c. shunt generator in ohms
rf=120;//feild resistance of a d.c. shunt generator in ohms
li=98;//load current in amperes
lv=240;//load voltage in volts
ia2=60;//reduced current in armature in amperes

//calculations
//generated e.m.f. remains constant 
if=lv/rf;//feild current in amperes
ia1=li+if;//armature current in amperes
e=lv+(ia1*ra);//generated e.m.f. in volts
V=e-(ia2*ra);//final terminal voltage in amperes

//output
mprintf('for an armature of 60A the terminal p.d. will be %3.0f',V)    
