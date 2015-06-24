//The ac Motor Control//
//Example 15.9//
Vom1=sqrt(2)*41.5;//starting rms value of output voltage //
Vom2=sqrt(2)*166;//ending rms value of output voltage//
V=415;//operating voltage of cyclo converter//
A1=(acos(Vom1/(1.35*V)))*180/%pi;//firing angle starts from//
printf('firing angle starts from A1=%fdegrees',A1);
A2=(acos(Vom2/(1.35*V)))*180/%pi;//firing angle ends at//
printf('\nfiring angle ends at A2=%fdegrees',A2);
PFl=0.8;//load power factor//
IPF=cos(%pi*7/15)*PFl/sqrt(2);//input power factor//
DF=0.7;//input displacement factor//
printf('\ninput power factor=IPF=%f',IPF);
Mh=cos(%pi*0.3627)*PFl/(sqrt(2)*DF);
printf('\ndistortion factor=Mh=%f',Mh);