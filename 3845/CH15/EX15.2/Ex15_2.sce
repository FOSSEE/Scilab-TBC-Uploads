//Example 15.2
//See Figure 15.12 (b)
P_AB=1.50*10^6;//Pressure along path AB (N/m^2)
delta_V_AB=500*10^-6;//Volume change along path AB (m^3)
W_AB=P_AB*delta_V_AB;//Work along path AB (J)
W_BC=0;//Work along isochoric path BC is zero as delta_V_BC=0, (J)
P_CD=2*10^5;//Pressure along path CD (N/m^2)
delta_V_CD=-500*10^-6;//Volume change along path CD (m^3)
W_CD=P_CD*delta_V_CD;//Work along path CD (J)
W_DA=0;//Work along isochoric path DA is zero as delta_V_DA=0, (J)
W=W_AB+W_BC+W_CD+W_DA;//Total work (J)
printf('a.Total work = %0.1f J',W)
area=(P_AB-P_CD)*delta_V_AB;//Area inside the rectangle (J)
printf('\nb.Area inside the rectangle ABCDA = %0.1f J',area)
if area==W
    printf('\nArea = %0.1fJ = W',area)
end
//Openstax - College Physics
//Download for free at http://cnx.org/content/col11406/latest
