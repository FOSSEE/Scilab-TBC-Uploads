//CHAPTER 1 ILLUSRTATION 9 PAGE NO 23
//TITLE:Basic kinematics
//Figure 1.28,1.29
clc
clear
pi=3.141
Nao=120//            speed of the crank in rpm
OQ=10//              length of link OQ in cm
OA=20//              length of link OA in cm
QC=15//              length of link QC in cm
CD=50//              length oflink CD in cm
//=============
wOA=2*pi*Nao/60//      angular speed of crank in rad/s
Vad=wOA*OA/100//         velocity of pin A in m/s
BQ=41//               from figure 1.29 
BC=26//               from firure 1.29 
bq=4.7//               from figure 1.29
bc=bq*BC/BQ//          from figure 1.29 in cm
s=50//                 scale for velocity diagram in cm/s
od=1.525//             velocity vector od in cm from figure 1.29
Vd=od*s//              velocity of ram D in cm/s
dc=1.925//             velocity vector dc in cm from figure 1.29
Vdc=dc*s//             velocity of link CD in cm/s
wCD=Vdc/CD//           angular velocity of link CD in cm/s
ba=1.8//               velocity vector of sliding of the block in cm
Vab=ba*s//             velocity of sliding of the block in cm/s
printf('Velocity of RAM D= %.3f cm/s\n angular velocity of link CD= %.3f rad/s\n velocity of sliding of the block= %.3f cm/s',Vd,wCD,Vab)
