//Example 4-4//
//Reducing a given expression//
clc
//clears the window//
clear
//clears all existing variables//
//the given expression is as follows//
disp(' Given Expression- AB+(AC)''+AB''C(AB+C) ')
disp('Multiplying')
disp(' AB+(AC)''+AABB''C+AB''CC ')
//using laws 18,6,8,9//
disp(' AB+(AC)''+AB''C ')
disp('applying DeMorgan theorem')
disp(' AB+A''+C''+AB''C ')
disp('rearrange')
disp(' AB+C''+A''+AB''C ')
//reduce using law 20//
disp(' AB+C''+A''+B''C ')
disp('rearranging again')
disp(' A''+AB+C''+B''C ')
//reduce using law 20//
disp(' A''+B+C''+B'' ')
//using laws 11 and 13//
disp(' 1 ')
//final reduced expression is displayed//
