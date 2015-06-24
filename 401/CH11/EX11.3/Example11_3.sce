//Example 11.3
//Program to design a wavelength channel plan for an 8 band, 32 
//channel dense WDM Interleaver Waveband Filter. Also to determine:
//(a)Total No. of channel required for each interleaver band filter
//(b)The overall bandwidth of the filter in each case

clear;
clc ;
close ;

//Given data
number_of_bands=8;          
M=4;               //TOTAL NUMBER OF CHANNELS IN EACH BAND

//(a)Total No. of channel required for each interleaver band filter 
//(i)N=0
N=0;
Cskip0=(number_of_bands-1)*N;
Ctotal0=number_of_bands*M+Cskip0;
//Displaying the Result in Command Window
printf("\n\n\t (a)(i)For 4-skip-0, Ctotal = %d.",Ctotal0);

//(ii)N=1
N=1;
Cskip1=(number_of_bands-1)*N;
Ctotal1=number_of_bands*M+Cskip1;
//Displaying the Result in Command Window
printf("\n\n\t   (ii)For 4-skip-1, Ctotal = %d.",Ctotal1);

//(iii)N=2
N=2;
Cskip2=(number_of_bands-1)*N;
Ctotal2=number_of_bands*M+Cskip2;
//Displaying the Result in Command Window
printf("\n\n\t  (iii)For 4-skip-2, Ctotal = %d.",Ctotal2);

//Generation of Table 11.1
printf("\n\n\t\t TABLE 11.1:WAVELENFTH CHANNEL PLAN");
W1=1552.52;         //nm - WAVELENGTH FOR 1 CHANNEL
printf("\n\n\t\t (i)4-skip-0");
for i = 0:Ctotal0-1
printf("\n\t Number of Channels = %d, Wavelength = %0.2f nm.",i+1,W1+0.8*i);
end
printf("\n\n\t\t (ii)4-skip-1");
for i = 0:Ctotal1-1
printf("\n\t Number of Channels = %d, Wavelength = %0.2f nm.",i+1,W1+0.8*i);
end
printf("\n\n\t\t (iii)4-skip-2");
for i = 0:Ctotal2-1
printf("\n\t Number of Channels = %d, Wavelength = %0.2f nm.",i+1,W1+0.8*i);
end

//(b)The overall bandwidth of the filter in each case taking values 
//from Table 11.1
//(i)N=0
W2=1577.32;         //nm - WAVELENGTH FOR 32 CHANNELS
BW=W2-W1;
//Displaying the Result in Command Window
printf("\n\n\n\t (b)(i)For 4-skip-0, Filter Bandwidth = %0.1f nm.",BW);

//(ii)N=1
W2=1582.92;         //nm - WAVELENGTH FOR 39 CHANNELS
BW=W2-W1;
//Displaying the Result in Command Window
printf("\n\n\t   (ii)For 4-skip-1, Filter Bandwidth = %0.1f nm.",BW);

//(iii)N=2
W2=1588.52;         //nm - WAVELENGTH FOR 46 CHANNELS
BW=W2-W1;
//Displaying the Result in Command Window
printf("\n\n\t  (iii)For 4-skip-2, Filter Bandwidth = %0.1f nm.",BW);