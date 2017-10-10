clc
//Example 7.6
//Parameters of single degree of freedom system

//------------------------------------------------------------------------------

res6=mopen(TMPDIR+'6_parameters_of_sdof.txt','wt')

mfprintf(res6,'(a) General equation of any single degree of freedom system is given by\n')
mfprintf(res6,'ma + cv + kx = F(t) = Fo sin(wt)\n')
mfprintf(res6,'\ta is the acceleration (x_dotdot)\n\tv is the velocity (x_dot)\n\tx is the amplitude\n\n')

m=5 //kg
c=21 // N-s/m
k=125 //N/m
Fo=5 //N
w=10 //rad/s

// Natural frequency
wn = sqrt(k/m)

mfprintf(res6,'(b)Natural Frequency=SQRT(k/m) = %0.2frad/s\n\n',wn)

//Damped Frequency
wd=sqrt((k/m) - ((c/(2*m))^2))

mfprintf(res6,'(c)Damped Frequency=SQRT( (k/m) - ( (c/ (2*m) ) ^2) ) = %0.2frad/s\n\n',wd)

//Damping ratio
z=c/ (2* sqrt(k*m))

mfprintf(res6,'(d)Damping ratio= c/ (2* SQRT(k*m)) = %0.2f\n\n',z)

//Amplitude of steady state vibration
Y= Fo/ sqrt( (k- (m*(w^2)))^2 + (c*w)^2 )

mfprintf(res6,'(e)Amplitude of steady state vibration, Y= Fo/ sqrt( (k- (m*(w^2)))^2 + (c*w)^2 ) =%0.5fm',Y)

mclose(res6)
editor(TMPDIR+'6_parameters_of_sdof.txt')
//------------------------------------------------------------------------------
//-----------------------------End of program-----------------------------------