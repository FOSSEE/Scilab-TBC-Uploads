//Faults and Protection//
//Example 16.6//
V=230;//ac input voltage in volts//
Vh=30;//each selenium plate handling voltage in volts//
N=((V/Vh)1)+1;//number of plates in series in each direction in the ckt//
printf('number of plates in series in each direction=N=%f',N);
Nt=2*N;//total number of plates in series in the circuit//
printf('\ntotal number of plates in series in both directions=Nt=%f',Nt);