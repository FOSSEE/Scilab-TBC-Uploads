//Example 25.6
//Using ray tracing, image distance, d_i, is found to be about 1.50m and magnification, m, to be about -2.
d_i_rt=1.50;//Image distance from ray tracing (m)
printf('Image distance found using ray tracing = %0.2f m',d_i_rt)
m_rt=-2;//Magnification from ray tracing
printf('\nMagnification found using ray tracing = %0.0f',m_rt)
d_o=0.75;//Object distance (m)
f=0.5;//Focal length (m)
d_i=f*d_o/(d_o-f);//Image distance by rearranging thin lens equation (m)
printf('\n\nImage distance found using thin lens equation = %0.2f m',d_i)
m=-d_i/d_o;//Magnification
printf('\nMagnification found using thin lens equation = %0.2f',m)
if d_i_rt==d_i&m_rt==m
    printf('\n\nThin lens equation and ray tracing results are consistent')
else
    printf('\n\nThin lens equation and ray tracing results are not consistent')
end
//Openstax - College Physics
//Download for free at http://cnx.org/content/col11406/latest
