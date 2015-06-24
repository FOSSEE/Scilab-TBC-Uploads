//Minimum diameter//
pathname=get_absolute_file_path('8.08.sce')
filename=pathname+filesep()+'8.08-data.sci'
exec(filename)
//Value of dPmax(in psi):
dPmax=p1-p2
//Q in cubic feet/sec:
Q1=1500/60/7.48;
//Initially assume diameter to be 4inches:
D=4;
//Reynolds number:
Re=4*Q1/%pi/v/D*12
//For this value, 
f=0.012;
 dP=8*f*L*p*Q1^2/(%pi)^2/D^5*1728;
while(dP>dPmax)   
   dP=8*f*L*p*Q1^2/(%pi)^2/D^5*1728;
   if(dP<dPmax)
   break
   else
   D=D+1;
 end
end
printf("\n\nRESULTS\n\n")
printf("Minimum diameter that can be used:%.1f inches\n\n",D)
