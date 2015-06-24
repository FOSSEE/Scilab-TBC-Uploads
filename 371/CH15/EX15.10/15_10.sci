//The ac Motor Control//
//Example 15.10//
Vo5m=sqrt(2)*41.5;//rms value of output voltage //
V=415;//operating voltage of cyclo converter//
A5=(acos(Vo5m/(1.35*V)))*180/%pi;//trigger angle ranges from//
printf('trigger angle ranges fromA5=%fdegrees',A5);
A51=180-A5;//trigger angle ranges upto//
printf('\ntrigger angle ranges upto A51=%fdegrees',A51');
LPF=0.9;//load power factor//
CA15=0.3132;//maximum cosine value corresponding to operating frequency 15hz//
HIPF=CA15*LPF/sqrt(2);//highest value of input power factor//
printf('\nhighest value of input power factor=HIPF=%f',HIPF);
LIPF=cos(A5*%pi/180)*LPF/sqrt(2);//lowest value of input power factor//
printf('\nlowest value of input power factor=LIPF=%f',LIPF);
IDF=0.75;//input displacement factor//
HDF=CA15*LPF/(sqrt(2)*IDF);//highest value of distortion factor//
printf('\nhighest value of distortion factor=HDF=%f',HDF);
LDF=HDF*cos(A5*%pi/180)/CA15;//lowest value of distortion factor//
printf('\nlowest value of distortion factor=LDF=%f',LDF);
