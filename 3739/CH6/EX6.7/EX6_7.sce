//Chapter 6, Example 6.7, page 241
clc
//Initialisation
d= 50*10**3                                       //distance in m

//Calculation
sl1=5.3                                           //location standard deviation
st1=3                                             //time standard deviation
sl2=6.2                                           //location standard deviation
st2=2                                             //time standard deviation
sv=sqrt(sl1**2+st1**2)                      //total standard deviation of VHF
su=sqrt(sl2**2+st2**2)                      //total standard deviation of UHF


//Results
printf("(1)for VHF, sigmaL = %.1f dB ",sl1)
printf("\n            sigmaT = %.1f dB ",st1)
printf("\n   for UHF, sigmaL = %.1f dB ",sl2)
printf("\n            sigmaT = %.1f dB ",st2)
printf("\n(3) Standard deviation values, sigmaVHF = %.1f dB",sv)
printf("\n                               sigmaUHF = %.1f dB",su)
