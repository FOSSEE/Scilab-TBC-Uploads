clc
clear
mprintf('Mechanical vibrations by G.K.Grover\n Example 4.11.1\n')
//given data
T=2//period of free vibration in sec
f=1//vertical harmonic frequency of machine in in Hz
Z=2.5//amplitude of vibrotometer mass relative to vibrotometer frame in mm
//calculations
Wn=2*%pi/T
W=2*%pi*f
bet=(W/Wn)
zeta=0//for vibrotometers
Y=Z*(sqrt((1-bet^2)^2+(2*zeta*bet)^2))/bet^2//amplitude of vibration of machine Eqn 4.4.11 in Sec 4.4.2
//output
mprintf(' The amplitude of vibration of support of machine is %4.4f mm',Y)
