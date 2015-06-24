clc
//Example 7.2
//Calulate the final velocity of duck after being hit by a bullet
m_duck=3//lbm
v_duck=-15//ft/s due west
m_bullet=0.05//lbm
v_bullet=1000//ft/s due east
//total initial momentum = final momentum
v_sys=((m_duck*v_duck)+(m_bullet*v_bullet))/(m_duck+m_bullet)//ft/s
printf("The final velocity of the duck is %f ft/s",v_sys);