clear
//
P = 200.0       //K The force on the beam
L = 15          //ft - The length of the rod
F_y = 50.0 //ksi
F_a = F_y/(5.0/3) //ksi -AISC MANUAL ,allowable axial stress if axial force is alone
F_b = F_a         //Allowable compressive bending stress
M_1 = 600.0       //k-in - The moment acting on the ends of the rod
M_2 = 800.0       //k-in - the moment acting on the other end of teh rod
B_x = 0.264       //in - Extracted from AISC manual
E = 29*(10**3)
A = P/F_a + M_2*B_x/F_b //sq.in- The minimum area
printf("\n \n The minimum area is  %0.2f in^2",A)




for i=1:2

  st =['W10x49', 'W10x60']
  printf("\n we will select %s section",st(i))

  A_s = [14.4, 17.6 ]        //sq.in - The area of the section
  r_min  = [2.54 , 2.57 ]     //in The minimum radius
  r_x = [4.35 ,4.39]        //in
  f_a = P/A_s(i)        //Ksi- The computed axial stress
  f_b =  M_2*B_x/A_s(i) //Computed bending stess
  C_c = ((2*(%pi**2)*E/F_y)**0.5) //Slenderness ratio L/R
  C_s = L*12/r_min(i)                  // Slenderness ratio L/R of the present situation
  if C_s <C_c then
      printf("\n Since calculated Le/r ratio is less than Cc,  we can apply the second ASD formula")
  else
      printf("\n The calculation is not possible")
      end
  F_a_1 = 19.3                              //Ksi - AISC lets try this
  c_m = 0.6 - 0.4*(-M_1/M_2)
  F_e = (12*(%pi**2)*E)/(23*(L*12/r_x(i))**2)
  k = f_a/F_a_1 + c_m*f_b*(1-(f_a/F_e))/F_b //Condition mentioned in AISC
  if k>1 then
      printf("\n The following %s section is not satisfying our constraints since f_a/F_a_1 + c_m*f_b*(1-(f_a/F_e))/F_b %0.3f >1",st(i),k)
  else
      printf("\n The following %s section is satisfying our constraints since f_a/F_a_1 + c_m*f_b*(1-(f_a/F_e))/F_b %0.3f <1",st(i),k)
   	end

end


printf("\n small variation due to rounding off errors")
