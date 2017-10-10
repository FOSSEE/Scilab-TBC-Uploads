clc
//Example 15.1
// Parameters of Brake Drum

//------------------------------------------------------------------------------
//Given Data:

T=225
N=500
f=0.3
r=0.36
c=0.04
b=0.9
a=0.36
V=(2*%pi*N*r)/60

res1= mopen(TMPDIR+'1_parameters_of_brake_drum.txt','wt')

N=T/(f*r)
mfprintf(res1,'(a) N = %d N\n\n',N)

F= (-(c*f*N) + (r*N))/b
mfprintf(res1,'(b) For clockwise rotation, F = %d N\n\n',F)

F= ((c*f*N) + (r*N))/b
mfprintf(res1,'(c) For clockwise rotation, F = %d N\n\n',F)

c_new=a/f
mfprintf(res1,'(d) For self locking, c>=a/f\n\t=%0.1f m\n\n',c_new)

Hg=f*N*V
mfprintf(res1,'(e) Hg = %0.1f kW\n\n',Hg* 1e-3)

mclose(res1);
editor(TMPDIR+'1_parameters_of_brake_drum.txt')

//------------------------------------------------------------------------------
//--------------------------------End of program--------------------------------