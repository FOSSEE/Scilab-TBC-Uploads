//Example 17.5
f_1=128;//Fundamental frequency (Hz)
T=22;//Temperature (C)
T=T+273;//Temperature (K)
v_w=331*sqrt(T/273);//Speed of sound (m/s)
L=v_w/(4*f_1);//Length of tube (m)
printf('a.Length of tube = %0.3f m',L)
n=9;//For fourth overtone
f_9=n*v_w/(4*L);//Frequency of fourth overtone (Hz)
printf('\nb.Frequency of the fourth overtone = %0.2f kHz',f_9/1000)
//Openstax - College Physics
//Download for free at http://cnx.org/content/col11406/latest
 
