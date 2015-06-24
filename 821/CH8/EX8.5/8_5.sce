t=12.8;//half life of the particle in hours//
k=0.693/(t*60);//value of k for the experiment in per min//
printf('Value of k for the experiment=k=%fper min',k);
printf('\n-dN/dt=rate=100*k*N=(0.693/12.8*60)*N\nN,the number of copper atoms required to produce 100Beta particles per minute\n we get N=(100*12.8*60)/0.693=1.108*10^5');
w=63.5;//atomic weight of Cu in grams//
AN=6.023*10^23;
N=1.108*10^5;
W=(N*w)/AN;//weight of Cu in grams//
printf('\nWeight of Cu=W=%f=1.17*10^-17grams',W);
printf('\nSince the maximum activity is 100Beta particles per minute,N=(a-x) at the end of six hours,i.e t=6 and N=1.108*19^5atoms');
printf('\nAt zero time N0=a\n a-x=a*exp(-k*t)\nUpon solving the above equation we get N0=a=1.533*10^5atoms\nWeight of Cu to start with=1.66*10^-17grams.');
printf('\nInitial activity=138.30000 disintegrations per minute');
