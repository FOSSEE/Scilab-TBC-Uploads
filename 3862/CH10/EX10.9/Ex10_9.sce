clear
//Design a timber beam is to carry a load of 5 kN/m over a simply supported span of 6 m. Permissible stress in timber is 10 N/mm2. Keep depth twice the width.

//variable declaration
w=(5)                  //KN/m
L=(6)                  //m 

M=w*1000000*(L**2)/8              //Maximum bending moment**N-mm

//Let b be the width and d the depth. Then in this problem d = 2b.
//Z=b*(d**2)/6=2*(b**3)/3
f=10                       //N/mm^2
//f*Z=M
b=(((M*3)/(2*f))**(0.3333))
printf("\n b= %0.0f  mm",b)

d=2*b
printf("\n d= %0.0f  mm",d)
