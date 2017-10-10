//Example 27_13
clc(); 
clear;
//To find the energy released in the reaction
m1=141.91635    //Units in u
m2=89.91972    //Units in u
m3=4.03466     //Units in u
n2=36         //Units in Constant
n1=56         //Units in Constant
n4=92       //units in constant
m5=236.04564          //Units in u
loss=m5-(m1+m2+m3)+n4-(n1+n2)                //Units in u
e1=931.5        //units n MeV
energy=round(e1*loss)        //units in MeV
printf("The energy released in the reaction E=%d MeV",energy)
