//To calculate the critical field
Tc = 3.7;      //critical temperature, K
Hc_0 = 0.0306;    //critical field, T
T = 2;     //temperature, K
Hc_2 = Hc_0*(1-(T/Tc)^2);     //critical field, T
printf("critical field at 2K is %5.5f T",Hc_2);
