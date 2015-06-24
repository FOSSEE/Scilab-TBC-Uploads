//Ex.13.3.2.;Find the thomson heat transferred


//Let D=dalpha_s1/dT;
D=5.4*10^-3;//unit=micro V/degree k^2
T1=273;//unit=k
T2=373;//unit=k
I=10*10^-3;//unit=A
//Thomson coefficient sigma,varies with temp. 
//sigma_1_of_T=-T*D;unit=V/degree k
//The thomson heat is given by equation
//qth=I*Integration of sigma_1_of_T  w.r.t. T
Integration=integrate('T','T',T1,T2);
qth=I*D*Integration;
printf("The THOMSON HEAT=%f micro W",qth);
