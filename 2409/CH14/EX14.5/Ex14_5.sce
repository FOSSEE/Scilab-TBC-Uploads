
//Variable Declaration

Lf=120832   //Number of symbols per frame
Tf=2        //Frame period(ms)
nF=0.949    //INTELSAT fram efficiency from Example 14.4
//Calculation

Rs=(Lf/(Tf))*10**-3  //Symbol rate(megasymbol/s)
Rt=Rs*2     //Transmission Rate
n=nF*Rt*10**3/64   //Voice channel capacity
n=round(n)
//Result

printf(" The voice channel capacity for the INTELSAT frame is %.0f Channels",n)
