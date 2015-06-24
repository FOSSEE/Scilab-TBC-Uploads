// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Introduction to heat transfer by S.K.Som, Chapter 4, Example 13")
//Thermal diffusivity in m^2/s
alpha = 2*(10^(-5));
//Thickness in m
L = 0.6;
//Initial temperature in °C
Ti = 20;
//Temperature raised in °C
To = 580;
//Time in seconds
t = 25*60;
//Nodal distance Deltax in m
deltax = 0.1;
//Assigning fourier number to be 0.5 for stability criteria
Fon = 0.5;
//Calculating timestep deltaT in seconds
deltaT = ((Fon*deltax)*deltax)/alpha;
//Number of increment
n = t/deltaT;
//Considering insulated surface as centre of plate
//Taking a total of 7 nodes
//Temperature at node 1 in °C
T(1,1) = 580;
//Temperature at all other nodes in °C
//i is the looping parameter
for i = 2:7
  T(1,i) = 20;
end;
//Substituting Fourier number,Fon=0.5 in Eq. 4.94, we have Eq. 4.104
//Calculating new temperature at all nodes
//k is the looping parameter for time
//Tnew is the new temperature in °C
for k = 1:5
  for i = 1:7
    if i==1 then
      Tnew(1,i) = T(1);
    end;
    %v02 = %f;  if i<7 then %v02 = i>1;end;
    if %v02 then
      Tnew = mtlb_i(Tnew,i,(T(i+1)+T(i-1))/2);
    end;
    if i==7 then
      Tnew = mtlb_i(Tnew,i,(T(7)+T(6))/2);
    end;
  end;
  //Assigning old temperatures value of new temperatures
  for i = 1:7
    T = mtlb_i(T,i,Tnew(i));
  end;
end;
//Temperature change at node 7 because of symmetry
T = mtlb_i(T,7,T(6));
//Temperature change at other nodes because of change in temperature of node
//7
for i = 2:6
  T = mtlb_i(T,i,(Tnew(i+1)+Tnew(i-1))/2);
end;
//Final temperature distribution after 25 mins
disp("Final temperature distribution in degree C after 25 mins")
T
