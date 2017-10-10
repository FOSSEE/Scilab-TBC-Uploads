//Example 26.5
f_o=6*10^-3;//Focal length of the objective lens (m)
d_o=6.20*10^-3;//Object distance for the objective lens (m)
d_i=1/(1/f_o-1/d_o);//Image distance for the objective lens from thin lens equation (m)
m_o=-d_i/d_o;//Magnification of the objective lens

d_o_e=23*10^-2-d_i;//Object distance for the eyepiece lens(m)
f_e=50*10^-3;//Focal length of the eyepiece lens (m)
d_i_e=1/(1/f_e-1/d_o_e);//Image distance for the eyepiece lens from thin lens equation (m)
m_e=-d_i_e/d_o_e;//Magnification of the eyepiece lens

m=m_o*m_e;//Overall magnification
printf('Overall magnification = %0.1f',m)
//Openstax - College Physics
//Download for free at http://cnx.org/content/col11406/latest
