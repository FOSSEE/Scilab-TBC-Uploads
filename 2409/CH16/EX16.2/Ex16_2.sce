
//Varaible Declaration

R01=42  //Rainfall at earth station(mm/hr)
p=0.01  //Percentage of time for which rain exceeds
LE=45   //Latitue of earth station(degrees)
hR=3.5   //Rain Height(km)
h0=0    //Mean Sea level(km)
Ta=272  //
El=37   //Elevation angle of the antenna(degrees)
Ts=170   //Total system noise temperature(Kelvin)
NCR=2.3*10**-9 //Carrier to noise ratio
fD=12.5 //Frequency of operation(GHz)
f12=12   //Frequency 12GHz(GHz)
f15=15   //Frequency 15GHz(GHz)
//Coefficients for horizontal and vertical polarizations at 12GHz and 15GHz as given in Table 4.2

ah12=0.0188
av12=0.0168
bh12=1.217
bv12=1.2
      
ah15=0.0367
av15=0.0335
bh15=1.154
bv15=1.128

//Calculation

//Using Interpolation to find coefficients at 12.5 GHz
ah= ah12+(ah15-ah12)*(fD-f12)/(f15-f12)
bh= bh12+(bh15-bh12)*(fD-f12)/(f15-f12)
av=av12+(av15-av12)*(fD-f12)/(f15-f12)
bv= bv12+(bv15-bv12)*(fD-f12)/(f15-f12)

//Coefficients for circular polarization
ac=(ah+av)/2
bc=(ah*bh+av*bv)/(2*ac)
Ls1=(hR-h0)/sin(El*3.142/180)     //Slant Path Length(km)
Ls= Ls1                         //Slant Path Length(km)
LG= Ls*cos(El*3.142/180)       //Horizontal projection of slant path length(km)
r011=90/(90+4*LG)                      //Reduction Factor
r01= r011                        //Reduction Factor
L= Ls1*r01                     //Effective path length(km)
alpha= ac*R01**bc              //Specific attenuation(dB/km)
A= 10**(alpha*L/(10))    //Total Attenuation(dB)
Trn=Ta*(1-1/A) //noise temperature with effect of rain
Tscs=Ts
NCrain=NCR*(A+(A-1)*Ta/Tscs) //Noise to carrier ratio due to rain
CNrain=-10*log10(NCrain)//Noise to carrier ratio due to rain(dB)
Rb=10*log10(40*10**6) //Transmission rate(dB)
EbN0rain= CNrain-Rb   //Upper limit of Eb/N0 ratio in prescence of rain(dB)

//Result
printf("Hence the upper limit for Eb/N0 for given conditions is %.1f dB",EbN0rain)
