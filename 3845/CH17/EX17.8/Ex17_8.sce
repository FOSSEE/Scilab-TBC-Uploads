//Example 17.8
f_s=2500000;//Frequency of ultrasound (Hz)
v_w=1540;//Speed of sound in human tissue (m/s)
v_obs=20*10^-2;//Speed of blood (m/s)
f_obs=f_s*((v_w+v_obs)/v_w);//Frequency received by the blood (Hz)
printf('a.Frequency received by the blood = %7.0f Hz',f_obs)
v_b=v_obs;//Source velocity=velocity of blood (m/s)
f_obs=f_obs*(v_w/(v_w-v_b));//Frequency that returns to source (Hz)
printf('\nb.Frequency that returns to source = %7.0f Hz',f_obs)
f_B=abs(f_obs-f_s);//Beat frequency (Hz)
printf('\nc.Beat frequency produced = %0.2f Hz',f_B)
//Answer given in the textbook is wrong for (a)
//Answer varies for (c) due to round off error
//Openstax - College Physics
//Download for free at http://cnx.org/content/col11406/latest

