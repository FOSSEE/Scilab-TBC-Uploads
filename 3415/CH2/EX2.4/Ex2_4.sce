//fiber optic communications by joseph c. palais
//example 2.4
//OS=Windows XP sp3
//Scilab version 5.4.1
clc
clear all
//given
alpha0=40//source radiation cone angle (beam spread) in degree
alphai=10// new system source radiation cone angle (beam spread) in degree
f=10e-2//focal length in m
do=2*f//since di=do object image distance in m
SS=20e-6//source size in m
mprintf('object and image distance for unity magnification=%fm\n',do)
//to find
M=alpha0/alphai//magnification
dobyf=(1/M)+1//object distance to focal length
do=dobyf*f//object distance in m
di=M*do//image distance in m
SIS=M*SS//source image size in m
mprintf( 'magnification=%f\nobject distance to focal length=%fm\nobject distance=%fcm\nimage distance=%fcm\nsource image size=%fum',M,dobyf,do*100,di*100,SIS*10^6);//multiplication factors in results to convert it into required format
