//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 9.11w
//calculation of the fractional change in kinetic energy

//given data
vb=20//speed(in m/s) of the block
v1=30//velocity(in m/s) of one of the part

//calculation
M=1//taking mass M=1 kg  for solving the equation
v=(1/M)*((M*vb*2)-(M*v1))//principle of conservation of linear momentum 
deltake=(M*v1*v1/(2*2))+(M*v*v/(2*2))-(M*vb*vb/2)//change in the kinetic energy
fdeltake=deltake/(M*vb*vb/2)//fractional change in the kinetic energy

printf('the fractional change in the kinetic energy is %3.2f',fdeltake)

