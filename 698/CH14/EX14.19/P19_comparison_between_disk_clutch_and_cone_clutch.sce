clc
//Example 14.19
//Comparison between disk clutch and cone clutch

//------------------------------------------------------------------------------
//Given Data:
//Mean radius
Rm=0.1//m
//Axial force
F=1000//N
//coefficient of friction
f=0.2
//number of plates in disk clutch
n1=4
n2=3
//total number of surfaces in contact
n=n1+n2-1
//angle of cone clutch
a=20//degrees
alpha=a/2 //pitch angle

//------------------------------------------------------------------------------
//Torque carrying capacity of a disk clutch
Td=(n*F*f*Rm)
//Torque carrying capacity of cone clutch
Tc=(F*f*Rm)/sind(alpha)
//Ratio T(disk) to T(cone)
r=Td/Tc

//------------------------------------------------------------------------------
//Printing result file to .txt
res19=mopen(TMPDIR+'19_comparison_between_disk_clutch_and_cone_clutch.txt','wt')
mfprintf(res19,"When both clutches operate at same speed,\nsubjected to same axial force\nand both have same mean diameter\nfor the given dimensions,\n")
mfprintf(res19,"Power capacity of disk clutch = (%0.3f) times power capacity of cone clutch",r)
mclose(res19)
editor(TMPDIR+'19_comparison_between_disk_clutch_and_cone_clutch.txt')
//------------------------------------------------------------------------------
//-----------------------------------End of program----------------------------- 