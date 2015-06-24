clc
//Chapter9
//Example9.8, page no 400
//Given
D1=1,D2=1.5*D1 // diameters of the new reflectors   D1=1assumed for ease of calculation
G_dbs=10*log10((D2/D1)^2)//Gain in dBs
mprintf('Overall Gain is %f dBs',round(1000*G_dbs)/1000)
