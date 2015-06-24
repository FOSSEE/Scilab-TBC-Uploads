//CHAPTER 1 ILLUSRTATION 13 PAGE NO 30
//TITLE:Basic kinematics
//Figure 1.33(a),1.33(b),1.33(c)
clc
clear
PI=3.141
N=120//        speed of the crank OC in rpm
OC=5//         length of link OC in cm
cp=20//        length of link CP in cm
qa=10//        length of link QA in cm
pa=5//         length of link PA in cm
CP=46.9//        velocity of link CP in cm/s
QA=58.3//        velocity of link QA in cm/s
Pa=18.3//        velocity of link PA in cm/s
Vc=2*PI*N*OC/60//    velocity of C in m/s
Cco=Vc^2/OC//        centripetal acceleration of C relative to O in cm/s^2
Cpc=CP^2/cp//         centripetal acceleration of P relative to C in cm/s^2
Caq=QA^2/qa//          centripetal acceleration of A relative to Q in cm/s^2
Cap=Pa^2/pa//           centripetal acceleration of A relative to P in cm/s^2
pp1=530
a1a=323
a2a=207.5
ACP=pp1/cp//        angular acceleration of link CP in rad/s^2
APA=a1a/qa//        angular acceleration of link PA in rad/s^2
AAQ=a2a/pa//        angular acceleration of link AQ in rad/s^2
printf('angular acceleration of link CP =%.3f rad/s^2\n angular acceleration of link CP=%.3f rad/s^2\n angular acceleration of link CP=%.3f rad/s^2',ACP,APA,AAQ)
