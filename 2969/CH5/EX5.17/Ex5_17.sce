clc
clear
//DATA GIVEN
r=15;                       //compression ratio
//V3-V2=a/100*Vs............Vs=stroke volume=V1-V2
//V3=1.84V2
c=6;                        //heat addition takes place at 'a' percent of stroke
//for air, gamma=1.4
g=1.4;

//Air standard efficiency of diesel cycle ETAdiesel=1-[1/(r)^(g-1)][(rho^g-1)/(rho-1)]
//rho=cut off ratio=V3/V2
rho=c/100*(r-1)+1;
ETAdiesel=1-[1/g/(r)^(g-1)]*[(rho^g-1)/(rho-1)];

printf(' The Air standard efficiency of diesel cycle is: %1.3f or %2.1f percent. \n',ETAdiesel,(ETAdiesel*100));
