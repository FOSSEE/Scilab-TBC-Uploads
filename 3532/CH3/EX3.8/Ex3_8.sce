clc
clear
mprintf('Mechanical vibrations by G.K.Grover\n Example 3.7.1\n')
//given data
fnA=12 //frequency of free vibrations of system A in Hz
fnB=15 //frequency of free vibrations of system B in Hz
TdA=4.5 //time taken by system A to damp out completely in sec
//calculations
TdB=fnA*TdA/fnB //time taken by system B to damp out completely in sec
//output
mprintf(' The time taken by system B to damp out completely is %4.4f sec',TdB)
