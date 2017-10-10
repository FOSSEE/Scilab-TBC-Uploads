clc
//Example 15.2
// Force of Block Brake

//------------------------------------------------------------------------------
//Given Data:

T=400
f=0.3
r=0.2
c=0.05
b=0.9
a=0.2


res2= mopen(TMPDIR+'2_force_of_block_brake.txt','wt')

N=T/(f*r)
mfprintf(res2,'(a) N = %0.2f N\n\n',N)

F= ((c*f*N) + (r*N))/b
mfprintf(res2,'(b) For clockwise rotation, F = %0.2f N\n\n',F)

F= (-(c*f*N) + (r*N))/b
mfprintf(res2,'(c) For clockwise rotation, F = %0.3f N\n\n',F)

a_new=r/f
mfprintf(res2,'(d) For self locking, a=%0.2f m\n\n',a_new)

mclose(res2);
editor(TMPDIR+'2_force_of_block_brake.txt')

//------------------------------------------------------------------------------
//--------------------------------End of program--------------------------------