 
Rearth= 1.5*10^(11); //radius of earth, m
r= 1.4; //rate of arrival of sunlight, kW/m^2
P= (r*10^3)*4*(%pi)*(Rearth^2); //total power reaching Earth
Rsun= 7*10^(8); //radius of Sun, m
r2= P/(4*(%pi)*(Rsun^2)); //radiation rate of Sun, W/m^2
emissivity=1; //for blackbody
Sig= 5.670*10^(-8); //Stefan's constant, W/m^2.K^4
T= [r2/(emissivity*Sig)]^(1/4);
disp(T,"The surface temperature of Sun, in K, is: ")
 
//Result
//The surface temperature of Sun, in K, is:    
//   5802.7366  