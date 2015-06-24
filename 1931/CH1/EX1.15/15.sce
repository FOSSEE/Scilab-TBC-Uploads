clc
clear
//INPUT DATA
V=2265//volume of hall in m^3
Ta1S1=94.85//The total absorbtion coefficient in m^2

//CALCULATION
T1=((0.167*V)/Ta1S1)//The reverberation time in the hall without audience in sec
Ta2S2=2*Ta1S1//The new absorbtion coefficient in m^2
T2=((0.167*V)/Ta2S2)//The reverberation time in the hall with audience in sec

//OUTPUT
printf('The reverberation time in the hall without audience is %3.3f sec \n The reverberation time in the hall with audience is %3.3f sec \n Thus,the reverberation reduces to half of its initial value when the audience fill the hall.',T1,T2)
