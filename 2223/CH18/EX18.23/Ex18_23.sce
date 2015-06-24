// scilab Code Exa 18.23 axial compressor stage efficiency 

R=0.5; // Degree of reaction
n_R=0.849; // efficiency of rotor blade row
n_D=0.849; // efficiency of diffuser blade row
n_st=R*n_R+(1-R)*n_D;
disp("%",n_st*1e2,"the value of stage efficiency is")
