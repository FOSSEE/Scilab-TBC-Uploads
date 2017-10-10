
 
//Example 5.2

//Page 253

//Refer to figure 5.19 on page 252
 
N=80//Number of links  
 
Nc=24//Number of control words 
 
Nb1=7//Number of bits per control word 
 
Nb2=5//Number of bits per control word

disp('The number of crosspoints in the space stage is')
 
Nx=N^2
 
disp('The total number of memory bits for the space stage control store is')
 
Nbx=N*Nc*Nb1
 
disp('The total number of memory bits for the time stage is')
 
Nbt=(N*Nc*8)+(N*Nc*Nb2)
 
disp('Thus the implementation complexity is ')
 
Cmplx=Nx+[(Nbx+Nbt)/100]

//Result
 
//Complexity is 6784 equivalent crosspoint.
 