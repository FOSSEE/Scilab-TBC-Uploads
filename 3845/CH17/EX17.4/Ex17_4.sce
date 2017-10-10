//Example 17.4
f_s=150;//Frequency of horn (Hz)
v_s=35;//Speed of train (m/s)
v_w=340;//Speed of sound (m/s)
f_obs1=f_s*(v_w/(v_w-v_s));//Frequency as the train approaches (Hz)
printf('a.Frequency observed as the train approaches = %0.1f Hz',f_obs1)
f_obs2=f_s*(v_w/(v_w+v_s));//Frequency after the train passes (Hz)
printf('\n  Frequency observed after the train passes = %0.1f Hz',f_obs2)
v_obs=v_s;//Speed of observer (train's engineer) (m/s)
//v_s and v_obs are both positive for this case, see point (3) under Solution for(b)
f_obs=[f_s*((v_w+v_obs)/v_w)]*(v_w/(v_w+v_s));
printf('\nb.Frequency observed by the train''s engineer = %0.1f Hz',f_obs)
//The answer varies due to round off error
//Openstax - College Physics
//Download for free at http://cnx.org/content/col11406/latest

