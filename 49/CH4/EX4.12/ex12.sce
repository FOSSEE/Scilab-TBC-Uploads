//CHAPTER 4_ Motion and Dimensional Measurement
//Caption : Strain gage
// Example 12// Page 172
Rg=120;    // given
Sg=2  // gage factor is given
stress=7*10^6;   //given
Ia=.03   //('enter the gage current=:')
//maximum allowable bridge voltage is
Eex=240*Ia;
strain=7*10^6/(200*10^9);
dR=strain*Sg*Rg;
Eo=Eex*dR/(4*Rg);
printf('output voltage is %fd V\n',Eo)
k=1.38*10^-23;  //boltzmann constant
T=300   //room temperature
dF=100000// bandwidth
E_noise=sqrt(4*k*Rg*T*dF) 
printf('rms noise voltage is %fd V\n',E_noise)  
SN=Eo/E_noise;
printf('Signal to noise ratio is %fd\n',SN)