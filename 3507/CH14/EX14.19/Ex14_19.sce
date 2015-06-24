// chapter14
// example14.19
// page 313

L=10d-6 // H
N=1 // turn
Lp=8 // H
Ls=2 // H

// since L is proportional to N^2, L=K*N^2 so making K as subject we get
K=L/N^2

// Lp=K*Np^2 so
Np=(Lp/K)^0.5

// Ls=K*Ns^2 so
Ns=(Ls/K)^0.5

printf("primary turns = %d \n",Np)
printf("secondary turns = %d \n",Ns)
